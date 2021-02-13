
provider "aws" {
   region = var.region
}

/* module "add-tags" {
   source   =  "../module/add-tags"
}

module "odoo-network" {
   source   =  "../module/odoo-network"
} */

variable vpc_id = {}
variable sudnet_id = {}

data "aws_vpc" "vpc-selected" {
   id = var.vpc_id
   filter {
      name = "tag:Name"
      values = ["Main"]
   }
}


data "aws_subnet" "subnet-pub"{
   id = var.subnet_id
}


output "vpc_info" {
   value = aws_vpc.vpc-selected
}

output "subnet-info" {
   value = aws_subnet.subnet-pub
   description = " public subnet"
}