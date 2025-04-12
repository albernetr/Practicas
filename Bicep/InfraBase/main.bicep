targetScope = 'resourceGroup'

param location string = resourceGroup().location

resource appServicePlan 'Microsoft.Web/serverfarms@2022-03-01' = {
  name: 'asp-linux-plan'
  location: location
  kind: 'linux'
  sku: {
    name: 'F1' // Free tier
    tier: 'Free'
    size: 'F1'
    capacity: 1
  }
  properties: {
    reserved: true // 💡 Esto hace que sea Linux obligatoriamente
  }
}

// Frontend Angular App Service
resource frontendApp 'Microsoft.Web/sites@2022-03-01' = {
  name: 'frontend-angular-app-${location}-${uniqueString(resourceGroup().id)}'
  location: location
  kind: 'app,linux'
  properties: {
    serverFarmId: appServicePlan.id
    siteConfig: {
      linuxFxVersion: 'NODE|18-lts' // Entorno Node.js para Angular static site o SPA
      appSettings: [
        {
          name: 'WEBSITES_ENABLE_APP_SERVICE_STORAGE'
          value: 'false'
        }
        {
          name: 'WEBSITE_RUN_FROM_PACKAGE'
          value: '1'
        }
      ]
    }
    httpsOnly: true
  }
}

// Backend FastAPI App Service
resource backendApp 'Microsoft.Web/sites@2022-03-01' = {
  name: 'backend-fastapi-${location}-${uniqueString(resourceGroup().id)}'
  location: location
  kind: 'app,linux'
  properties: {
    serverFarmId: appServicePlan.id
    siteConfig: {
      linuxFxVersion: 'PYTHON|3.11' // Asegúrate que sea soportado en tu región
      appSettings: [
        {
          name: 'WEBSITES_ENABLE_APP_SERVICE_STORAGE'
          value: 'false'
        }
        {
          name: 'PYTHON_VERSION'
          value: '3.11'
        }
      ]
    }
    httpsOnly: true
  }
}

// Salidas
output frontendAppUrl string = 'https://${frontendApp.properties.defaultHostName}'
output backendAppUrl string = 'https://${backendApp.properties.defaultHostName}'
