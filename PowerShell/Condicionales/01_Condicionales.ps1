[int]$edad = Read-Host "Ingresa tu edad"
if ($edad -lt 18) {
    Write-Host "Eres menor de edad"
} elseif ($edad -ge 18 -and $edad -lt 60) {
    Write-Host "Eres mayor de edad"
} else {
    Write-Host "Eres adulto mayor"
}

$opcion = Read-Host "Elige una opción (1, 2 o 3)"

switch ($opcion) {
    "1" { Write-Host "Elegiste opción uno" }
    "2" { Write-Host "Elegiste opción dos" }
    "3" { Write-Host "Elegiste opción tres" }
    default { Write-Host "Opción inválida" }
}

$letra = Read-Host "Escribe una vocal"
switch ($letra) {
    "a" { Write-Host "Vocal" }
    "e" { Write-Host "Vocal" }
    "i" { Write-Host "Vocal" }
    "o" { Write-Host "Vocal" }
    "u" { Write-Host "Vocal" }
    default { Write-Host "No es una vocal" }
}

$vocales = @("a","e","i","o","u")
if ($vocales -contains $letra) {
    Write-Host "Es una vocal"
} else {
    Write-Host "Es una consonante"
}

[string]$nombre = Read-Host "Ingresa tu nombre"
switch -Wildcard ($nombre) {
    "A*" { Write-Host "Nombre empieza con A" }
    "B*" { Write-Host "Nombre empieza con B" }
    default { Write-Host "Otro nombre" }
}