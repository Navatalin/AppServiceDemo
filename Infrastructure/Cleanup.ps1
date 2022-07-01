$groupName = $args[0]

$groupExists = az group exists --name $groupName
if($groupExists -eq $true)
{
    Write-Host "Deleting Resource group: $groupName"
    az group delete --name $groupName --yes
    Write-Host "Deleted Resource group: $groupName"
}
else
{
    Write-Host "Resource group: $groupName does not exist"
}