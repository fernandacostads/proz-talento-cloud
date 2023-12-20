# Precisamos imprimir um número para cada andar de um hotel de 20 andares. Porém, o dono do hotel é supersticioso e optou por não ter um 13ro andar.

# 1- Escreva um código que imprima todos os números exceto o número 13.
print("\nCom for:\n")              
for i in range(1,21,1):
    if i != 13:
        print(i)

# 2- Escreva mais um código que resolva o mesmo problema, mas dessa vez usando o laço de repetição 'while'.
print("\nCom while:\n")   
numeros = 1
while numeros <= 20:
    if numeros != 13:
        print(numeros)
    numeros += 1

# 3- Como desafio, imprima eles em ordem decrescente (20, 19, 18...)
print("\nCom for invertido:\n")   
for i in range(20, 0, -1):
    if i != 13:
        print(i)

print("\nCom while invertido:\n")              
numeros = 20
while numeros >= 1:
    if numeros != 13:
        print(numeros)
    numeros -= 1


