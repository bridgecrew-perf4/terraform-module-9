
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
   id = var.vpc_id
   filter {
      name = "tag:Name"
      values = ["Main"]
   }
}

resource "aws_vpc" "vpc-1" {
   id = aws_vpc.vpc-selected.id
   tags = var.mytags
}


data "aws_subnet" "subnet-pub"{
   id = var.subnet_id
}

resource "aws_subnet" "subnet-1" {
   id = aws_subnet_id.subnet-pub.id
   tags = var.mytags
}

output "vpc_info" {
   value = aws_vpc.vpc-selected
}

output "subnet-info" {
   value = aws_subnet.subnet-pub
   description = " public subnet"
}