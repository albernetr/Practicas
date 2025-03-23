$texto = "Aprendiendo PowerShell"
Write-Host $texto
Write-Host "El contenido es: $texto"
Write-Host 'El contenido es: $texto'

$x = 50
$y = 10
$z = $x + $y
Write-Host "La suma de $x + $y es: $z"

$nombre = "Juan"
$apellido = "Perez"
$nombreCompleto = "$nombre $apellido"
$cantidad= 5
$precio_unitario = 10
$precio_total = "{0:N2}" -f ($cantidad * $precio_unitario) #Esto mostrará el total con 2 decimales.
Write-Host " Hola $nombreCompleto, el precio total por las $cantidad unidades a un valor de $precio_unitario es: $precio_total"

$nombre = Read-Host "Ingresa tu nombre"
Write-Host "Hola $nombre, bienvenido"

# Aunque el usuario ingrese un número, PowerShell lo capturará como texto (string) por defecto. Si necesitas hacer operaciones matemáticas con esa entrada, debes convertirla a número

$edad = [int](Read-Host "Ingresa tu edad")
Write-Host "El próximo año tendrás: $($edad + 1)"

# Tip útil: lectura segura (por ejemplo, contraseñas)
$pass = Read-Host "Ingresa tu contraseña" -AsSecureString
Write-Host "Tu en crudo contraseña es: $pass"
$passTexto = [Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($pass))
Write-Host "Tu contraseña es: $passTexto"

# Obtener la fecha y hora actual:
$fecha = Get-Date
Write-Host "La fecha y hora actual es: $fecha"

# Obtener la fecha y hora actual en un formato específico:
$fecha = Get-Date -Format "dd/MM/yyyy HH:mm:ss"
Write-Host "La fecha y hora actual es: $fecha"

#Extraer partes de la fecha y hora
$fecha = Get-Date
$dia = $fecha.Day
$mes = $fecha.Month
$año = $fecha.Year
$hora = $fecha.Hour
$minuto = $fecha.Minute
$segundo = $fecha.Second
Write-Host "Hoy es $dia/$mes/$año y la hora es ${hora}: ${minuto}:${segundo}"

#Crear una fecha específica
$fecha = Get-Date -Year 2020 -Month 12 -Day 25
Write-Host "La fecha es: $fecha"

$fechaNacimiento = Get-Date "1995-04-12"
$edad = (Get-Date).Year - $fechaNacimiento.Year
Write-Host "Tu edad es: $edad años"

#Crear una fecha y hora específica
$fecha = Get-Date -Year 2020 -Month 12 -Day 25 -Hour 10 -Minute 30 -Second 45

# Tipado explícito
[string]$nombre = "Luis"
[int]$edad = 25
[datetime]$fecha = Get-Date
[bool]$activo = $true

