provider "aws" {}

terraform {
  backend "s3" {
    bucket = "dev-prod-terraform-state"
    key    = "tfmodules/terraform.tfstate"
    region = "us-east-1"
    
  }
}