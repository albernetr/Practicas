# ===============================================
#          MENÚ PRINCIPAL - APLICACIÓN AZURE
# ===============================================

$salir = $false

do {
    Clear-Host
    Write-Host "╔══════════════════════════════════════════════════╗" -ForegroundColor DarkCyan
    Write-Host "║               MENÚ PRINCIPAL - AZURE             ║" -ForegroundColor Cyan
    Write-Host "╚══════════════════════════════════════════════════╝" -ForegroundColor DarkCyan
    Write-Host ""
    Write-Host "1) 🔐 Login a Azure"
    Write-Host "2) 📋 Seleccionar Suscripción"
    Write-Host "3) 📂 Seleccionar Grupo de Recursos"
    Write-Host "4) 📊 Ver Resumen Actual del Entorno"
    Write-Host "5) ❌ Salir"
    Write-Host "──────────────────────────────────────────────────"
    $opcion = Read-Host "📝 Ingrese una opción (1-5)"

    switch ($opcion) {
        "1" {
            Write-Host "`n▶ Ejecutando script de Login Azure..." -ForegroundColor Magenta
            .\\01_Login_azure.ps1
            Pause
        }
        "2" {
            Write-Host "`n▶ Ejecutando script de Selección de Suscripción..." -ForegroundColor Magenta
            .\\02_Seleccionar_Suscripcion_Azure.ps1
            Pause
        }
        "3" {
            Write-Host "`n▶ Ejecutando script de Selección de Grupo de Recursos..." -ForegroundColor Magenta
            .\\03_Seleccionar_GrupoRecursos_Azure.ps1
            Pause
        }
        "4" {
            Write-Host "`n▶ Ejecutando script de Resumen del Entorno Azure..." -ForegroundColor Magenta
            .\\04_Resumen_Actual_Entorno_Azure.ps1
            Pause
        }
        "5" {
            Write-Host "`n✅ Cerrando aplicación. ¡Gracias por usar esta aplicacion!" -ForegroundColor Green
            $salir = $true
        }
        default {
            Write-Host "`n❌ Opción inválida. Intente nuevamente." -ForegroundColor Red
            Pause
        }
    }
} until ($salir)
