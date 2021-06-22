Connect-AzAccount

New-AzResourceGroup -Name TutorialResources -Location eastus

# Get all resources
Get-AzResourceGroup | Format-Table