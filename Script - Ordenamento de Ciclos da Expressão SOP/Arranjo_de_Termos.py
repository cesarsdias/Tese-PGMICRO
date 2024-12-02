# Universidade Federal do Rio Grande do Sul
# Programa de Pós Graduação em Microeletrônica (PGMICRO)
# Cesar de S. Dias
# Ordenamento de produtos/ciclos de expressões SOP 


def map_literals(term, variables):
    var_map = {var: -1 for var in variables}
    i = 0
    while i < len(term):
        if term[i] in var_map:              
            if i + 1 < len(term) and term[i + 1] == "'":  
                var_map[term[i]] = 0                      # Literal negativo
                i = i + 1
            else:
                var_map[term[i]] = 1                      # Literal positivo
        i = i + 1
    
    return var_map

def get_term_cells(term_map, num_vars):
    cells = []     # lista com as células do Kmap cobertas pelo termo
    for val in range(2 ** num_vars):
        binary = f"{val:0{num_vars}b}"
        match = 1
        for i, var in enumerate(term_map):
            if term_map[var] != -1 and term_map[var] != int(binary[i]):
                match = 0
                break
        if match == 1:
            cells.append(val)
    return cells

def main():
    # Entrada da expressão lógica
    expression = "a' b c  + a b d  + a b' c d'  + b d e f + a b c' e f + a c d e'"
    terms = expression.split(" + ")
    
    # Extração de variáveis da expressão
    variables = sorted(set(filter(str.isalpha, expression)))
    num_vars = len(variables)
    
    term_cells = []
    for term in terms:
        term_map = map_literals(term, variables)
        cells = get_term_cells(term_map, num_vars)
        term_cells.append((term, cells))
    
    
    # Classificação dos termos
    
    term_cells.sort(key=lambda x: len(x[1]), reverse=True)  # Ordena os termos pelo número de células (ordem decrescente)
    
    covered_cells = set()
    organized_terms = []

    while term_cells:  
        
        term_cells.sort(key=lambda x: len([cell for cell in x[1] if cell not in covered_cells]), reverse=True)
        term, cells = term_cells.pop(0)    
        unique_cells = []  # Lista para armazenar as células únicas
        for cell in cells:  
            if cell not in covered_cells:  
                unique_cells.append(cell)  
        if unique_cells:
            covered_cells.update(unique_cells)
            organized_terms.append((term, unique_cells))
    
    # Exibição dos termos e respectivas células no mapa de Karnaugh
    for term, cells in organized_terms:
        print(f"Termo: {term}, Células: {cells}")

    # Listagem do número de células 
    print("\nNúmero de células por termo:")
    for term, cells in organized_terms:
        print(f"{len(cells)}")

if __name__ == "__main__":
    main()
