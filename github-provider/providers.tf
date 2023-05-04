terraform {
  required_providers {
    name = {
      source = "integrations/github"
      version = "5.24.0"
    }
  }
}

provider "github" {
  token = var.token
}
