# ===============================================
#       SELECCIÓN DE GRUPO DE RECURSOS AZURE
# ===============================================

Clear-Host
Write-Host "╔═════════════════════════════════════════════════╗" -ForegroundColor DarkCyan
Write-Host "║     SCRIPT: SELECCIÓN DE GRUPO DE RECURSOS     ║" -ForegroundColor Cyan
Write-Host "╚═════════════════════════════════════════════════╝" -ForegroundColor DarkCyan
Write-Host ""

Write-Host "📂 Obteniendo lista de grupos de recursos disponibles..." -ForegroundColor Yellow

# Obtener grupos de recursos
try {
    $rgList = az group list --output json | ConvertFrom-Json
} catch {
    Write-Host "`n❌ Error al obtener los grupos de recursos. ¿Estás logueado y con suscripción activa?" -ForegroundColor Red
    exit
}

if (-not $rgList -or $rgList.Count -eq 0) {
    Write-Host "`n⚠ No se encontraron grupos de recursos en esta suscripción." -ForegroundColor Yellow
    exit
}

Write-Host "`n📄 Lista de Grupos de Recursos Disponibles:" -ForegroundColor Green
Write-Host "──────────────────────────────────────────────────────────────"

$i = 0
foreach ($rg in $rgList) {
    $numStr = $i.ToString().PadLeft(2, ' ')
    Write-Host "$numStr) $($rg.name) ($($rg.location))" -ForegroundColor White
    $i++
}

Write-Host "──────────────────────────────────────────────────────────────"
Write-Host ""

# Selección del grupo
$seleccion = Read-Host "✏ Ingrese el número del grupo de recursos que desea seleccionar como predeterminado (0-$($rgList.Count - 1))"

if ($seleccion -match '^\d+$' -and [int]$seleccion -ge 0 -and [int]$seleccion -lt $rgList.Count) {
    $grupoSeleccionado = $rgList[$seleccion]
    $nombreGrupo = $grupoSeleccionado.name

    # Establecer grupo como default con az configure
    Write-Host "`n🔧 Estableciendo '$nombreGrupo' como grupo de recursos predeterminado..." -ForegroundColor Cyan
    az configure --defaults group="$nombreGrupo"

    # Guardar también en archivo si deseas
    # Set-Content -Path ".\\GrupoSeleccionado.txt" -Value $nombreGrupo

    Write-Host "`n✅ Grupo de recursos predeterminado establecido correctamente: $nombreGrupo" -ForegroundColor Green
} else {
    Write-Host "`n❌ Selección inválida. Abortando proceso." -ForegroundColor Red
    exit
}

Write-Host "`n✔ Script finalizado correctamente." -ForegroundColor Green

