
$tenantName = "hearstpm.onmicrosoft.com"
$subscriptionName = "Visual Studio Professional"
$resourceGroupName = "neilsBrownBagRGG"
$resourceGroupLocation = "uksouth"
$SQLTemplateName = "SQL\deploy.json"
$SQLParameterFileName = "SQL\deploy.parameters.local.json"
$appTemplateName = "API\deploy.json"
$appParameterFileName = "API\deploy.parameters.local.json"


Set-AzContext -Tenant $tenantName  -SubscriptionId $subscriptionName 

az group exists --subscription $subscriptionName  --name $resourceGroupName


if ((az group exists --subscription $subscriptionName  --name $resourceGroupName) -eq "true") {
  
    Remove-AzResourceGroup -Name $resourceGroupName
}
else {

    new-AzResourceGroup -Name $resourceGroupName -Location $resourceGroupLocation 
}

New-AzResourceGroupDeployment -ResourceGroupName $resourceGroupName -TemplateFile $SQLTemplateName -TemplateParameterFile $SQLparameterFileName
New-AzResourceGroupDeployment -ResourceGroupName $resourceGroupName -TemplateFile $appTemplateName -TemplateParameterFile $appParameterFileName


