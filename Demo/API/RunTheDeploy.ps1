

$mytenant = "hearstpm.onmicrosoft.com"
$mysubscription = "Visual Studio Professional"
$resourceGroupName = "neilsBrownBag"
$resourceGroupLocation = "uksouth"
$templateFilename = "./deploy.json"
$parameterFileName = "./deploy.parameters.local.json"

Set-AzContext -Tenant $mytenant  -SubscriptionId $mysubscription 

az account set -s $mysubscription
New-AzResourceGroup -Name $resourceGroupName -Location $resourceGroupLocation
New-AzResourceGroupDeployment -ResourceGroupName $resourceGroupName -TemplateFile $templateFilename   -TemplateParameterFile $parameterFileName -Mode Complete







