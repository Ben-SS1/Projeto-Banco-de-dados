import random

def gerar_numero_telefone():
    DDDs = [
        11, 12, 13, 14, 15, 16, 17, 18, 19, 21, 22, 24, 27, 28, 31, 32, 33, 34, 35,
        37, 38, 41, 42, 43, 44, 45, 46, 47, 48, 49, 51, 53, 54, 55, 61, 62, 63, 64,
        65, 66, 67, 68, 69, 71, 73, 74, 75, 77, 79, 81, 82, 83, 84, 85, 86, 87, 88,
        89, 91, 92, 93, 94, 95, 96, 97, 98, 99
    ]
    
    # Seleciona um DDD aleatório
    DDD = random.choice(DDDs)
    
    # Gera o dígito 'c' com as probabilidades dadas
    c = random.choices([8, 9, 7], weights=[60, 30, 10], k=1)[0]
    
    # Gera os outros dígitos do número
    dddd_dddd = random.randint(1000, 9999)
    dddd_dddd2 = random.randint(1000, 9999)
    
    return f"({DDD}) 9{c}{dddd_dddd}-{dddd_dddd2}"

def gerar_numeros_telefone(N):
    numeros = set()
    
    while len(numeros) < N:
        numeros.add(gerar_numero_telefone())
    
    return list(numeros)

# Exemplo de uso:
N = 10
numeros_telefone = gerar_numeros_telefone(N)
for numero in numeros_telefone:
    print(numero)