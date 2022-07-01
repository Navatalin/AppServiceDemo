# AppServiceDemo

Demo application to show deployment to Azure App Service

## Pre-requisites

An Azure Tenant
Azure CLI installed to run infrastructure deployment code
Azure Subsription Id - This can be found in the Azure Portal

## Instructions

1. Log in to the Azure CLI using powershell and az login
2. From infrastructure folder run 01-Create-Resource-Group.ps1 this requires 2 parameters, the first is the group name and the second is the location
   Example .\01-Create-Resource-Group.ps1 Testing australiaeast
3. Next run 02-Deploy-App-Service.ps1 this requires 2 parameters, the first is the App Service Plan name and the second is the Web App Name. These should match the values within the parameter files
   Example .\02-Deploy-App-Service.ps1 demo-app-plan demo-web-app
4. Run the 03-Create-Service-Principal.ps1 script with 3 parameters - AppName, Azure SubscriptionId and Resouce Group Name
   Eample .\03-Create-Service-Principal.ps1 demo-web-app 17204a91-d490-xxxx-xxxx-xxxxxxxxxxxx Testing
5. Take the output from the previous script and save it into a new Github Action Secret called AZURE_CREDENTIALS
6. Open the workflow file found in .github\workflows\AppService.yaml and update the environment variable AZURE_WEBAPP_NAME to match the name you have used previously in the infrastructure script
7. Commit any changes to the workflow file and application and then push to the main branch.
8. On push the workflow will trigger and run the actions to deploy the application into the AppService. The url for the application can be found in the logs for the Deploy action or inside the Azure Portal
9. To clean up the environment run the Cleanup.ps1 script from the infrastructure folder and provide the resource group name. WARNING - this will delete everything inside the resource group, if you wish to use this for a live system it would be best to remove this file.


## Next Steps
To further extend this the following are some suggestions:

Set up deployment slots using the Standard SKU for App Services and deploy into a staging slot to test before swapping it into production.

Containerize the application to ensure a consistant environment for both development and deployment.

Configure Azure Key Vault to store any connection strings or secrets to ensure tight security on the application.

