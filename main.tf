terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
      #name = "skip_provider_registration"
    }
  }
}
# Configure the Microsoft Azure Provider
provider "azurerm" {
  #resource_provider_registrations = "none" # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {}
}
resource "azurerm_resource_group" "example" {
  name     = "shiva-rg"
  location = "east US"
}