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