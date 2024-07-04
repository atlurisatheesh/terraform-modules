provider "aws" {}

terraform {
  backend "s3" {
    bucket = "ddev-terraform-modules"
    key    = "tfmodules/terraform.tfstate"
    region = "us-east-1"
    
  }
}