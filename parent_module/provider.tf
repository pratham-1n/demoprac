terraform {
   required_providers {
        azure = {
            source  = "hashicorp/azurerm"
            version = "~> 3.0"
        }
   }
}
provider "azurerm" {
  features {}
  subscription_id = "8f765261-0137-4fd7-b8de-53247b5236d0"
}