terraform {
  required_providers {
    terratowns = {
      source = "local.providers/local/terratowns"
      version = "1.0.0"
    }
  }
  #backend "remote" {
  #  hostname = "app.terraform.io"
  #  organization = "ExamPro"

  #  workspaces {
  #    name = "terra-house-1"
  #  }
  #}
  #cloud {
  #  organization = "ExamPro"
  #  workspaces {
  #    name = "terra-house-1"
  #  }
  #}

}

provider "terratowns" {
  endpoint = var.terratowns_endpoint
  user_uuid = var.teacherseat_user_uuid
  token = var.terratowns_access_token
}

module "terrahouse_aws" {
 source = "./modules/terrahouse_aws"
 user_uuid = var.teacherseat_user_uuid
 index_html_filepath = var.index_html_filepath
 error_html_filepath = var.error_html_filepath
 content_version = var.content_version
 assets_path = var.assets_path
}

resource "terratowns_home" "home" {
  name =   "City of Pearls"
  description = <<DESCRIPTION
Hyderabad, known as the "City of Pearls" epitomizes the greatness of India, is a vibrant fusion of tradition and progress.
Nestled in the heart of the country, it reflects India's rich cultural heritage while embracing the winds of modernity.
With iconic landmarks like the Charminar and Golconda Fort, it pays homage to its storied history, where dynasties rose and fell.
Hyderabad's thriving IT industry exemplifies India's global technological prowess, while its diverse cuisine, from the world-famous Hyderabadi biryani to street food delights, showcases the nation's culinary diversity.
DESCRIPTION
  domain_name = module.terrahouse_aws.cloudfront_url
  # domain_name = "3fafa3.cloudfront.net"
  town = "missingo"
  content_version = 1
}