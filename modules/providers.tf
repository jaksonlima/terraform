terraform {
  required_version = ">= 0.13.1"
  
  required_providers {
    aws = ">=4.14.0"
    local = ">=2.2.3"
  }

  backend "s3" {
    bucket = "myjwsystembucket"
    key = "terraform.tfstate"
    region =  "sa-east-1"
  }
  
}

provider "aws" {
  region =  "sa-east-1"
}

