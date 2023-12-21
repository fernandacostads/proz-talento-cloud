def pedir_numeros():
    valor_valido = False

    while valor_valido == False:
        try:
            resposta_usuario = input("Escreva um número par e divisível por 3 entre 0 e 100: ")
            numero_usuario = int(resposta_usuario)

            if numero_usuario > 100:
                print("Número deve ser menor ou igual a 100")
            elif numero_usuario < 0:
                print("Número deve ser maior ou igual a 0")
            elif numero_usuario % 2 != 0:
                print("Número deve ser par")
            elif numero_usuario % 3 != 0:
                print("Número deve ser divisível por 3")
            else:
                print(f"Obrigado! O número {resposta_usuario} foi uma ótima escolha")

        except ValueError:
            print("Número inválido. Insira um número inteiro entre 0 e 100.")

pedir_numeros()