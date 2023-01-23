terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.48.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

module "tgw" {
    source = "./modules/tgw-attachments"
    list_of_vpcs = var.list_of_vpcs
    list_of_subnets = var.list_of_subnets
    transit_gateway_id = var.transit_gateway_id
}