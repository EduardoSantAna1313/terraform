terraform {
  /*
  backend "local" {
    path = "../../backend/terraform.tfstate"
  }
  */
  backend "s3" {
    # Config passada via terraform init
    #bucket = "terraform-states-132312312"
    #key    = "terraform.tfstate"
    #region = "us-east-1"
  }
}

provider "local" {}