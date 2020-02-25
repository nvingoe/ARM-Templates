
$mytenant = "hearstpm.onmicrosoft.com"
$mysubscription = "Visual Studio Professional"
$resourceGroupName = "Neils_Demo_RG"
$resourceGroupLocation = "uksouth"
$templatename = "deploy.json"
$parameterFileName = "deploy.parameters.local.json"

Set-AzContext -Tenant $mytenant  -SubscriptionId $mysubscription 
New-AzResourceGroup -Name $resourceGroupName -Location $resourceGroupLocation -Force 

New-AzResourceGroupDeployment -ResourceGroupName $resourceGroupName -TemplateFile $templatename -TemplateParameterFile $parameterFileName



