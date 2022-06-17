terraform {
  source = "github.com/sharmaarnav/as-sentinel//modules"
}

locals {
    subscription_id   = "b83ba8f2-f3e4-4144-bd58-8ea3710e139a"
}

inputs = {
    prefix = "production01"
    location = "australiaeast"
    subscription_id   = "b83ba8f2-f3e4-4144-bd58-8ea3710e139a"
}

generate "versions" {
  path      = "versions_override.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
    terraform {
      required_providers {
        azurerm = {
          source = "hashicorp/azurerm"
          version = "3.9.0"
        }
      }
    }

    provider "azurerm" {
        features {}
        subscription_id = "${local.subscription_id}"
    }
EOF
}

remote_state {
    backend = "azurerm"
    config = {
        subscription_id = "${local.subscription_id}"
        key = "${path_relative_to_include()}/terraform.tfstate"
        resource_group_name = "DefaultResourceGroup-EAU"
        storage_account_name = "terragrunttest001"
        container_name = "environment-prod"
    }
    generate = {
        path      = "backend.tf"
        if_exists = "overwrite_terragrunt"
    }
}