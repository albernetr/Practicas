#1. Ciclo for
for ($i = 1; $i -le 5; $i++) {
    Write-Host "Número: $i"
}

#2. Ciclo foreach
$colores = @("Rojo", "Verde", "Azul")

foreach ($color in $colores) {
    Write-Host "Color: $color"
}

#3. Ciclo while
$i = 1
while ($i -le 5) {
    Write-Host "Número: $i"
    $i++
}

#4. Ciclo do-while
$i = 1
do {
    Write-Host "Número: $i"
    $i++
} while ($i -le 5)  # La condición se evalúa al final del ciclo

#5. Ciclo do-until
$i = 1  
do {  
    Write-Host "Número: $i"  
    $i++  
} until ($i -gt 5)  # La condición se evalúa al final del ciclo

