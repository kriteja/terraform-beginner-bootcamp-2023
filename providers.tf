terraform {
              #  backend "remote" {
              #    hostname = "app.terraform.io"
              #    organization = "kriteja"

              #    workspaces {
              #      name = "terra-house-1"
              #    }
#  cloud {
#    organization = "kriteja"
#    workspaces {
#      name = "terra-house-1"
#    }
#  }
  
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.5.1"
    }
    aws = {
      source = "hashicorp/aws"
      version = "5.18.1"
    }
  }
}

provider "aws" {
  # Configuration options
}

provider "random" {
  # Configuration options
}