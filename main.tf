resource "azurerm_resource_group" "example" {
  name = "remote-rg-ashish"
  location = "West Europe"
}

resource "azurerm_storage_account" "strg" {
    resource_group_name = resource.azurerm_resource_group.example.name
    location = resource.azurerm_resource_group.example.location
    name = "strg12212023ash"
    account_replication_type = "LRS"
    account_tier = "Standard"
  
}

resource "azurerm_storage_container" "strgcontainer" {
  name                  = "terraformstate"
  storage_account_name  = azurerm_storage_account.strg.name
  container_access_type = "private"
}