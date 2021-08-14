$tenantId="6ebcceec-b2b6-4df9-bf91-9d5fcce809bf"
$clientId="57a56887-1387-4e1d-863e-1cd84500e039"
$clientSecret="71q-v-Gg6~C94cL7GkceFe4nAwwi3~Vlpx"

$subid="68fa4567-e05d-4e70-8857-44bdcaeb7274"
$resourceGroupName ="freightnavproductionplan"
$serverFarmName="FreightNavProductionPlan"
$workerName ="RD0004FFA74A0B"

# Create a hashtable for the body, the data needed for the token request
# The variables used are explained above
$Body = @{
    'tenant' = $tenantId
    'client_id' = $clientId
    'scope' = 'https://management.azure.com/.default'
    'client_secret' = $clientSecret
    'grant_type' = 'client_credentials'
}


#Create the REST-URL

$usageURL = "https://management.azure.com/subscriptions/$subid/resourceGroups/$resourceGroupName/providers/Microsoft.Web/serverfarms/$serverFarmName/workers/$workerName/reboot?api-version=2019-08-01"

#authentication param
$Params = @{
    'Uri' = "https://login.microsoftonline.com/$TenantId/oauth2/v2.0/token"
    'Method' = 'Post'
    'Body' = $Body
    'ContentType' = 'application/x-www-form-urlencoded'
}
 
$AuthResponse = Invoke-RestMethod @Params

$Headers = @{
    'Authorization' = "Bearer $($AuthResponse.access_token)"
}



$ReturnVal = Invoke-RestMethod -Method POST -Uri $usageURL -Headers $Headers 










