# Create a resource group.
New-AzureRmResourceGroup `
  -Name myResourceGroup `
  -Location eastus

# Create the public and private subnets.
$Subnet1 = New-AzureRmVirtualNetworkSubnetConfig `
  -Name Public `
  -AddressPrefix 10.0.0.0/24
$Subnet2 = New-AzureRmVirtualNetworkSubnetConfig `
  -Name Private `
  -AddressPrefix 10.0.1.0/24

# Create a virtual network.
$Vnet=New-AzureRmVirtualNetwork `
  -ResourceGroupName myResourceGroup `
  -Location eastus `
  -Name myVnet `
  -AddressPrefix 10.0.0.0/16 `
  -Subnet $Subnet1,$Subnet2
