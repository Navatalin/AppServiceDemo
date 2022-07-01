$appName = $args[0]
$subscriptionId = $args[1]
$groupName = $args[2]

az ad sp create-for-rbac --name $appName --role contributor --scopes /subscriptions/$subscriptionId/resourceGroups/$groupName/providers/Microsoft.Web/sites/$appName --sdk-auth