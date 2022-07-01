$planName = $args[0]
$webAppName = $args[1]

az deployment group create --name $planName --resource-group Testing --template-file .\02-App-Service-Plan.json --parameters .\02-App-Service-Plan.parameters.json
az deployment group create --name $webAppName --resource-group Testing --template-file .\03-Web-App-Create.json --parameters .\03-Web-App-Create.parameters.json
