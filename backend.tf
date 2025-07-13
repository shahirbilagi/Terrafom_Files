terraform {
  backend "azurerm" {
    resource_group_name = "Demo-resources"                            # Can also be set via `ARM_ACCESS_KEY` environment variable.
    storage_account_name = "shahirstorage"                                 # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "containers-shahir"                                  # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "prod.terraform.tfstate"                   # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}
