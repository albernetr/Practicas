# Documentación de la Plantilla Bicep

Esta plantilla Bicep despliega un plan de App Service y una aplicación de App Service en Azure. A continuación, se detallan los parámetros, variables y recursos utilizados en la plantilla.

## Parámetros

- **environmentName**: El nombre del entorno. Debe ser uno de los siguientes valores: `dev`, `test` o `prod`. Valor por defecto: `dev`.
    ```bicep
    @description('El nombre del entorno. Debe ser dev, test o prod.')
    @allowed(['dev', 'test', 'prod'])
    param environmentName string = 'dev'
    ```

- **solutionName**: El nombre único de la solución. Se utiliza para garantizar que los nombres de los recursos sean únicos. Debe tener una longitud mínima de 5 caracteres y máxima de 30 caracteres. Valor por defecto: `toyhr${uniqueString(resourceGroup().id)}`.
    ```bicep
    @description('El nombre único de la solución. Se utiliza para garantizar que los nombres de los recursos sean únicos.')
    @minLength(5)
    @maxLength(30)
    param solutionName string = 'toyhr${uniqueString(resourceGroup().id)}'
    ```

- **appServicePlanInstanceCount**: El número de instancias del plan de App Service. Debe ser un valor entre 1 y 10. Valor por defecto: `1`.
    ```bicep
    @description('El número de instancias del plan de App Service.')
    @minValue(1)
    @maxValue(10)
    param appServicePlanInstanceCount int = 1
    ```

- **appServicePlanSku**: El nombre y nivel del SKU del plan de App Service. Valor por defecto: `{ name: 'F1', tier: 'Free' }`.
    ```bicep
    @description('El nombre y nivel del SKU del plan de App Service.')
    param appServicePlanSku object = {
        name: 'F1'
        tier: 'Free'
    }
    ```

- **location**: La región de Azure en la que se deben implementar los recursos. Valor por defecto: `eastus`.
    ```bicep
    @description('La región de Azure en la que se deben implementar los recursos.')
    param location string = 'eastus'
    ```

## Variables

- **appServicePlanName**: Nombre del plan de App Service, compuesto por el nombre del entorno y el nombre de la solución.
    ```bicep
    var appServicePlanName = '${environmentName}-${solutionName}-plan'
    ```

- **appServiceAppName**: Nombre de la aplicación de App Service, compuesto por el nombre del entorno y el nombre de la solución.
    ```bicep
    var appServiceAppName = '${environmentName}-${solutionName}-app'
    ```

## Recursos

- **appServicePlan**: Recurso del plan de App Service.
    ```bicep
    resource appServicePlan 'Microsoft.Web/serverfarms@2024-04-01' = {
        name: appServicePlanName
        location: location
        sku: {
            name: appServicePlanSku.name
            tier: appServicePlanSku.tier
            capacity: appServicePlanInstanceCount
        }
    }
    ```

- **appServiceApp**: Recurso de la aplicación de App Service.
    ```bicep
    resource appServiceApp 'Microsoft.Web/sites@2024-04-01' = {
        name: appServiceAppName
        location: location
        properties: {
            serverFarmId: appServicePlan.id
            httpsOnly: true
        }
    }
    ```

Esta plantilla Bicep permite desplegar un plan de App Service y una aplicación de App Service en la región especificada, con las configuraciones de SKU y número de instancias definidas por los parámetros. Los nombres de los recursos se generan de manera única utilizando el nombre del entorno y el nombre de la solución.
