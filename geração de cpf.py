import random

def gerar_dv(cpf_base):
    """
    Função para calcular os dígitos verificadores de um CPF.
    """
    # Primeiro dígito verificador
    soma = sum([int(cpf_base[i]) * (10 - i) for i in range(9)])
    primeiro_dv = 11 - (soma % 11)
    if primeiro_dv >= 10:
        primeiro_dv = 0

    # Segundo dígito verificador
    soma = sum([int(cpf_base[i]) * (11 - i) for i in range(9)]) + primeiro_dv * 2
    segundo_dv = 11 - (soma % 11)
    if segundo_dv >= 10:
        segundo_dv = 0

    return f"{primeiro_dv}{segundo_dv}"

def gerar_cpf():
    """
    Função para gerar um CPF completo.
    """
    cpf_base = ''.join([str(random.randint(0, 9)) for _ in range(9)])
    dv = gerar_dv(cpf_base)
    return f"{'.'.join([cpf_base[3*i:3*i+3] for i in range(3)])}-{dv}"

def gerar_cpfs_unicos(n):
    """
    Função para gerar N CPFs únicos.
    """
    cpfs = set()
    while len(cpfs) < n:
        novo_cpf = gerar_cpf()
        cpfs.add(novo_cpf)
    return list(cpfs)

# Exemplo de uso
n = 20
cpfs_unicos = gerar_cpfs_unicos(n)
for cpf in cpfs_unicos:
    print(cpf)
