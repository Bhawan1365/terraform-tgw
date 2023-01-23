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

resource "aws_ec2_transit_gateway_vpc_attachment" "example" {
    
    count=length(var.list_of_vpcs)

    subnet_ids         = var.list_of_subnets[count.index]
    transit_gateway_id = var.transit_gateway_id
    vpc_id             = var.list_of_vpcs[count.index]

    tags = {
        Name = "aws_ec2_transit_gateway_vpc_attachment_${count.index}"
    }
}