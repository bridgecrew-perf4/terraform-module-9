
provider "aws" {
   region = var.region
}

/* module "add-tags" {
   source   =  "../module/add-tags"
}

module "odoo-network" {
   source   =  "../module/odoo-network"
} */


data "aws_vpc" "vpc-selected" {
   filter {
      name = "tag:Name"
      values = ["Main"]
   }
}


output "vpc_info" {
   value = aws_vpc.vpc-selected
}

