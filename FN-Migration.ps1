Connect-AzAccount
# Get all resources
Get-AzResourceGroup | Format-Table

$srcapp = Get-AzWebApp -ResourceGroupName RG-FNTest-CE -Name CC-TST-FNMainAppTest

New-AzAppServicePlan -Location "Canada Central" -ResourceGroupName RG-FNTest -Name CC-TST-ASP-FreightNavTestPlan -Tier Standard

$destapp = New-AzWebApp -ResourceGroupName "RG-FNTest" -Name "FNApp551202" -Location "Canada Central" -AppServicePlan "CC-TST-ASP-FreightNavTestPlan" -SourceWebApp $srcapp

$destApp = New-AzWebApp -ResourceGroupName "DestRGName" -Name "dest-webapp" -Location "West US" -AppServicePlan "DestAppPlanName" -SourceWebApp $srcApp

$destapp1 = New-AzWebApp -ResourceGroupName DestinationAzureResourceGroup -Name dest-webapp -Location "North Central US" -AppServicePlan DestinationAppServicePlan -SourceWebApp $srcapp -IncludeSourceWebAppSlots


RG-FNProduction
CC-PRD-ASP-FreightNavProductionPlan
	CC-PRD-FNMainAppProduction
	CC-PRD-FNMainAppDriverProduction
	CC-PRD-FNMainAppApiProduction
	CC-PRD-FNAMainAppAdmin


