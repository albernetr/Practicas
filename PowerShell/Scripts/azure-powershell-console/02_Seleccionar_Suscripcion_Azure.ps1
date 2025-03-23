# ===============================================
#           SELECCIÓN DE SUSCRIPCIÓN AZURE
# ===============================================

Clear-Host
Write-Host "╔══════════════════════════════════════════════╗" -ForegroundColor DarkCyan
Write-Host "║         SCRIPT: SELECCIÓN DE SUSCRIPCIÓN     ║" -ForegroundColor Cyan
Write-Host "╚══════════════════════════════════════════════╝" -ForegroundColor DarkCyan
Write-Host ""

Write-Host "📋 Obteniendo lista de suscripciones disponibles..." -ForegroundColor Yellow

# Obtener todas las suscripciones
$subs = az account list --output json | ConvertFrom-Json

if (-not $subs) {
    Write-Host "`n❌ No se encontraron suscripciones disponibles. ¿Estás logueado?" -ForegroundColor Red
    exit
}

Write-Host "`n📄 Lista de Suscripciones Disponibles:" -ForegroundColor Green
Write-Host "────────────────────────────────────────────────────────────────────────────"

# Mostrar listado numerado con estado dentro de paréntesis
$i = 0
foreach ($sub in $subs) {
    $numStr = $i.ToString().PadLeft(2, ' ')
    $nameStr = $sub.name
    $stateStr = $sub.state
    Write-Host "$numStr) $nameStr ($stateStr) → ID: $($sub.id)" -ForegroundColor White
    $i++
}

Write-Host "────────────────────────────────────────────────────────────────────────────"
Write-Host ""

# Solicitar selección
$seleccion = Read-Host "✏ Ingrese el número de la suscripción que desea activar"

# Validar entrada
if ($seleccion -match '^\d+$' -and [int]$seleccion -ge 0 -and [int]$seleccion -lt $subs.Count) {
    $subSeleccionada = $subs[$seleccion]
    Write-Host "`n🔄 Estableciendo la suscripción seleccionada: $($subSeleccionada.name) ..." -ForegroundColor Cyan
    az account set --subscription $subSeleccionada.id
    Write-Host "✅ Suscripción activada correctamente." -ForegroundColor Green
} else {
    Write-Host "`n❌ Selección inválida. Abortando proceso." -ForegroundColor Red
    exit
}

