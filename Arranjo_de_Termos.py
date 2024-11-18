# Programa de Pós Graduação em Microeletrônica
# Cesar de S. Dias
# Otimização do arranjo de termos em uma expressão Booleana

# Definição das funções

def parse_term(term, variables):
    var_map = {var: -1 for var in variables}

    i = 0
    while i < len(term):
        if term[i] in var_map:
            if i + 1 < len(term) and term[i + 1] == "'":
                var_map[term[i]] = 0
                i += 1
            else:
                var_map[term[i]] = 1
        i += 1
    
    return var_map

def get_cells_for_term(term_map, num_vars):
    cells = []
    for val in range(2 ** num_vars):
        binary = f"{val:0{num_vars}b}"
        match = True
        for i, var in enumerate(term_map):
            if term_map[var] != -1 and term_map[var] != int(binary[i]):
                match = False
                break
        if match:
            cells.append(val)
    return cells

def main():
    # Entrada da expressão lógica
    expression = "B'CE + B'D' + A'B' + A'CD' + ABDE' + CD'E'"
    terms = expression.split(" + ")
    
    # Extração de variáveis da expressão
    variables = sorted(set(filter(str.isalpha, expression)))
    num_vars = len(variables)
    
    term_cells = [(term, get_cells_for_term(parse_term(term, variables), num_vars)) for term in terms]
    
    # Classificação dos termos
    term_cells.sort(key=lambda x: len(x[1]), reverse=True)
    
    covered_cells = set()
    organized_terms = []

    while term_cells:  # Seleciona o termo com mais células exclusivas
        
        term_cells.sort(key=lambda x: len([cell for cell in x[1] if cell not in covered_cells]), reverse=True)
        term, cells = term_cells.pop(0)
        unique_cells = [cell for cell in cells if cell not in covered_cells]
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
