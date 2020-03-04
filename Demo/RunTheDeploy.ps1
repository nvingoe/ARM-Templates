
$mytenant = "hearstpm.onmicrosoft.com"
$mysubscription = "Visual Studio Professional"
$resourceGroupName = "Neils_Demo_RG"
$resourceGroupLocation = "uksouth"

$SQLTemplateName = "SQL\deploy.json"
$SQLParameterFileName = "SQL\deploy.parameters.local.json"
$appTemplateName = "API\deploy.json"
$appParameterFileName = "API\deploy.parameters.local.json"

Set-AzContext -Tenant $mytenant  -SubscriptionId $mysubscription 

New-AzResourceGroup -Name $resourceGroupName -Location $resourceGroupLocation -Force 

New-AzResourceGroupDeployment -ResourceGroupName $resourceGroupName -TemplateFile $SQLTemplateName -TemplateParameterFile $SQLparameterFileName

New-AzResourceGroupDeployment -ResourceGroupName $resourceGroupName -TemplateFile $appTemplateName -TemplateParameterFile $appParameterFileName


