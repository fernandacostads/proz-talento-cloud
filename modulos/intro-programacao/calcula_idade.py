import datetime

def obter_ano_nascimento():
    while True:
        try:
            ano = int(input("Digite o ano de nascimento (entre 1922 e 2021): "))
            if 1922 <= ano <= 2021:
                return ano
            else:
                print("Por favor, insira um ano de nascimento válido entre 1922 e 2021.")
        except ValueError:
            print("Entrada inválida. Digite um número inteiro válido para o ano.")

def calcular_idade(ano_nascimento):
    ano_atual = datetime.datetime.now().year #retorna o ano corrent independente do ano em que o código está sendo executado.
    return ano_atual - ano_nascimento

def main():
    nome = input("Digite seu nome completo: ")
    ano_nascimento = obter_ano_nascimento()

    idade = calcular_idade(ano_nascimento)

    print(f"Nome: {nome}")
    print(f"Idade em 2022: {idade} anos")

if __name__ == "__main__":
    main()
