def suma_arreglos_recursiva(arr1, arr2, i=0):
    if i < len(arr1):
        return [arr1[i] + arr2[i]] + suma_arreglos_recursiva(arr1, arr2, i+1)
    else:
        return []

def suma_impares_recursiva(arr, i=0):
    if i < len(arr):
        if arr[i] % 2 != 0:
            return arr[i] + suma_impares_recursiva(arr, i+1)
        else:
            return suma_impares_recursiva(arr, i+1)
    else:
        return 0

def suma_arreglos_iterativa(arr1, arr2):
    resultado = []
    for i in range(len(arr1)):
        resultado.append(arr1[i] + arr2[i])
    return resultado

def suma_impares_iterativa(arr):
    result = 0
    for num in arr:
        if num % 2 != 0:
            result += num
    return result

# Ejemplo de uso
arr1 = [1, 2, 3, 4]
arr2 = [5, 6, 7, 8]

suma_arr = suma_arreglos_recursiva(arr1, arr2)
print("Suma de arreglos recursiva:", suma_arr)

suma_impares = suma_impares_recursiva(arr1)
print("Suma de impares recursiva:", suma_impares)

suma_arr_iter = suma_arreglos_iterativa(arr1, arr2)
print("Suma de arreglos iterativa:", suma_arr_iter)

suma_impares_iter = suma_impares_iterativa(arr1)
print("Suma de impares iterativa:", suma_impares_iter)
