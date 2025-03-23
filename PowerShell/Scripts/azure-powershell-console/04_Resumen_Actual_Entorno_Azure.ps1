# ===============================================
#         RESUMEN ACTUAL DEL SISTEMA AZURE
# ===============================================

Clear-Host
Write-Host "╔══════════════════════════════════════════════╗" -ForegroundColor DarkCyan
Write-Host "║          RESUMEN DEL ENTORNO AZURE           ║" -ForegroundColor Cyan
Write-Host "╚══════════════════════════════════════════════╝" -ForegroundColor DarkCyan
Write-Host ""

# ► Suscripción activa
Write-Host "🔎 Obteniendo información de la suscripción activa..." -ForegroundColor Yellow
try {
    $sub = az account show --output json | ConvertFrom-Json
    Write-Host "📌 Suscripción activa: $($sub.name) ($($sub.state))"
    Write-Host "🆔 ID: $($sub.id)"
} catch {
    Write-Host "❌ No se pudo obtener la suscripción activa." -ForegroundColor Red
}

# ► Grupo de recursos predeterminado
Write-Host "`n📂 Obteniendo grupo de recursos predeterminado..." -ForegroundColor Yellow
try {
    $defaults = az configure --list-defaults --output json | ConvertFrom-Json
    $grupoPorDefecto = $defaults | Where-Object { $_.name -eq "group" } | Select-Object -ExpandProperty value
} catch {
    $grupoPorDefecto = $null
}

if ($grupoPorDefecto) {
    Write-Host "✔ Grupo de recursos predeterminado: $grupoPorDefecto" -ForegroundColor Green

    # ► Listar recursos dentro del grupo de recursos
    Write-Host "`n📦 Listando recursos dentro del grupo: $grupoPorDefecto" -ForegroundColor Yellow
    try {
        $recursos = az resource list --resource-group $grupoPorDefecto --query "[].{Name:name, Type:type, Location:location}" --output table

        if ($recursos) {
            $recursos
        } else {
            Write-Host "⚠ No se encontraron recursos en este grupo." -ForegroundColor Yellow
        }
    } catch {
        Write-Host "❌ Error al listar recursos del grupo." -ForegroundColor Red
    }
} else {
    Write-Host "⚠ No se ha definido ningún grupo de recursos como predeterminado." -ForegroundColor Yellow
}

Write-Host "`n✔ Fin del resumen del sistema." -ForegroundColor Cyan

