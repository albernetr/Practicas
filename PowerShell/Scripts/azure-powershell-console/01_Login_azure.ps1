$sandboxSubscriptionName = "Concierge Subscription"

Write-Host "📋 Listando suscripciones actuales antes del logout:" -ForegroundColor Cyan
az account list --output table

Write-Host "`n🔄 Cerrando sesión de todas las suscripciones locales..."
az logout


Write-Host "`n🔐 Iniciando nuevo login en Azure..."
az login

Write-Host "`n📋 Listando suscripciones después del login:" -ForegroundColor Cyan
az account list --output table

Write-Host "`n📋 Suscripción activa después del login:" -ForegroundColor Cyan
az account show --output table

Write-Host "`n📂 Listando grupos de recursos disponibles en la suscripción activa:" -ForegroundColor Cyan
try {
    $rgList = az group list --output table
    if ($rgList) {
        Write-Host "✅ Grupos de recursos listados correctamente."
    } else {
        Write-Host "⚠ No se encontraron grupos de recursos en esta suscripción." -ForegroundColor Yellow
    }
} catch {
    Write-Host "❌ Error al intentar obtener los grupos de recursos." -ForegroundColor Red
}