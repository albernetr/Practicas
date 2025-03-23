#Paso 1: ¿Qué es un Array en PowerShell?
# Un array es una estructura de datos que almacena una colección de elementos. En PowerShell, un array es una variable que puede contener varios valores. Cada valor en un array se llama elemento y tiene un índice que lo identifica. Los índices de un array comienzan en 0.
#
#Paso 2: Crear un Array en PowerShell   
# Para crear un array en PowerShell, se utiliza el operador @ seguido de los elementos del array entre paréntesis y separados por comas. Por ejemplo:
#   
$colores = @("Rojo", "Verde", "Azul")
# En este ejemplo, se crea un array llamado $colores que contiene tres elementos: "Rojo", "Verde" y "Azul". 
#
#Paso 3: Acceder a los elementos de un Array en PowerShell
# Para acceder a un elemento específico de un array en PowerShell, se utiliza el índice del elemento entre corchetes. Por ejemplo:

$colores = @("Rojo", "Verde", "Azul")
Write-Host $colores[0]  # Salida: Rojo
Write-Host $colores[1]  # Salida: Verde 
Write-Host $colores[2]  # Salida: Azul
# En este ejemplo, se accede a los elementos del array $colores utilizando sus índices (0, 1 y 2) y se muestra su valor en la consola.  

#Paso 4: Modificar un elemento de un Array en PowerShell
# Para modificar un elemento específico de un array en PowerShell, se utiliza el índice del elemento entre corchetes y se asigna un nuevo valor al elemento. Por ejemplo:

$colores = @("Rojo", "Verde", "Azul")
$colores[1] = "Amarillo"    
Write-Host $colores[1]  # Salida: Amarillo
# En este ejemplo, se modifica el segundo elemento del array $colores cambiando su valor de "Verde" a "Amarillo". Luego, se muestra el nuevo valor del elemento en la consola.

#Paso 5: Recorrer un Array en PowerShell
# Para recorrer todos los elementos de un array en PowerShell, se pueden utilizar ciclos como foreach o for. Por ejemplo:

$colores = @("Rojo", "Verde", "Azul")
foreach ($color in $colores) {
    Write-Host "Color: $color"
}
# En este ejemplo, se recorren todos los elementos del array $colores utilizando un ciclo foreach y se muestra cada elemento en la consola.

#Paso 6: Verificar si un elemento está en un Array en PowerShell
# Para verificar si un elemento específico está en un array en PowerShell, se puede utilizar el operador -contains. Por ejemplo:

$colores = @("Rojo", "Verde", "Azul")
if ($colores -contains "Verde") {
    Write-Host "El color Verde está en el array"
}
# En este ejemplo, se verifica si el elemento "Verde" está en el array $colores utilizando el operador -contains. Si el elemento está presente en el array, se muestra un mensaje en la consola.

# Miselanea

$frutas = @("manzana", "pera", "uva")
Write-Host $frutas

Write-Host $frutas[0]
Write-Host $frutas[1]
$frutas += "mango"
Write-Host $frutas[3]

Write-Host "El array tiene $($frutas.Count) elementos"

foreach ($fruta in $frutas) {
    Write-Host "Fruta: $fruta"
}

#Paso 7: Conclusiones
# En este tutorial, aprendiste cómo trabajar con arrays en PowerShell. Creaste un array, accediste a sus elementos, modificaste un elemento, recorriste el array y verificaste si un elemento está presente en el array. Los arrays son una herramienta poderosa para almacenar y manipular colecciones de datos en PowerShell. ¡Sigue practicando y explorando nuevas formas de utilizar arrays en tus scripts de PowerShell!



