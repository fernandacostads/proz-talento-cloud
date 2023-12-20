def calculadora(num1, num2, op):
    if op == 1:  
        return num1 + num2
    elif op == 2:  
        return num1 - num2
    elif op == 3:  
        return num1 * num2
    elif op == 4:  
        if num2 != 0:  
            return num1 / num2
        else:
            print("Erro: Divisão por zero não é permitida.")
            return 0
    else:
        print("Operação inválida. Insira um número de operação entre 1 e 4.")
        return 0

def main():
    num1 = float(input("Digite o primeiro número: "))
    num2 = float(input("Digite o segundo número: "))
    op = int(input("Escolha a operação (1 - Soma, 2 - Subtração, 3 - Multiplicação, 4 - Divisão): "))

    resultado = calculadora(num1, num2, op)

    print(f"Resultado da operação: {num1} {'+' if op == 1 else '-' if op == 2 else '*' if op == 3 else '/'} {num2} = {resultado}")

if __name__ == "__main__":
    main()
