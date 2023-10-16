terraform {
  required_providers {
    terratowns = {
      source = "local.providers/local/terratowns"
      version = "1.0.0"
    }
  }
  #backend "remote" {
  #  hostname = "app.terraform.io"
  #  organization = "kriteja"

  #  workspaces {
  #    name = "terra-house-1"
  #  }
  #}
  cloud {
    organization = "kriteja"
    workspaces {
      name = "terra-house-1"
    }
  }

}

provider "terratowns" {
  endpoint = var.terratowns_endpoint
  user_uuid = var.teacherseat_user_uuid
  token = var.terratowns_access_token
}

module "home_arcanum_hosting" {
  source = "./modules/terrahome_aws"
  user_uuid = var.teacherseat_user_uuid
  public_path = var.arcanum.public_path
  content_version = var.arcanum.content_version
}

resource "terratowns_home" "home_arcanum" {
  name = "Vanilla Milkshake!"
  description = <<DESCRIPTION
A vanilla milkshake is a classic, sweet, and creamy beverage made by blending vanilla ice cream with milk, resulting in a simple yet indulgent treat. Perfect for a refreshing drink or dessert.
DESCRIPTION
  domain_name = module.home_arcanum_hosting.domain_name
  town = "missingo"
  content_version = var.arcanum.content_version
} 

module "home_payday_hosting" {
  source = "./modules/terrahome_aws"
  user_uuid = var.teacherseat_user_uuid
  public_path = var.payday.public_path
  content_version = var.payday.content_version
}

resource "terratowns_home" "home_payday" {
  name = "Chocolate Milkshake!"
  description = <<DESCRIPTION
A chocolate milkshake is a luscious and indulgent treat made by blending chocolate ice cream with milk, resulting in a rich and creamy beverage that's perfect for satisfying your chocolate cravings or cooling off on a hot day.
DESCRIPTION
  domain_name = module.home_payday_hosting.domain_name
  town = "missingo"
  content_version = var.payday.content_version
}