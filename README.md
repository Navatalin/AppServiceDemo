# AppServiceDemo

Demo application to show deployment to Azure App Service

## Pre-requisites

An Azure Tenant
Azure CLI installed to run infrastructure deployment code

## Instructions

1. Log in to the Azure CLI using powershell and az login
2. From infrastructure folder run 01-Create-Resource-Group.ps1 this requires 2 parameters, the first is the group name and the second is the location
   Example .\01-Create-Resource-Group.ps1 Testing australiaeast
3. Next run 02-Deploy-App-Service.ps1 this requires 2 parameters, the first is the App Service Plan name and the second is the Web App Name. These should match the values within the parameter files
   Example .\02-Deploy-App-Service.ps1 demo-app-plan demo-web-app
   
