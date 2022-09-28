#/terragrunt.hcl

locals {
  project = "test"
}

generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<-EOF
    terraform {
      required_providers {
        kustomization = {
          source = "kbst/kustomization"
          version = "0.8.0"
        }
      }
      required_version = ">= 0.13"
    }
  EOF
}