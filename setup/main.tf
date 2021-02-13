
provider "aws" {
   region = var.region
}

module "add-tags" {
   source   =  "../module/add-tags"
}

module "odoo-network" {
   source   =  "../module/odoo-network"
}


output "vpc_info" {
   value = aws_vpc.vpc-selected
}

output "subnet-info" {
   value = aws_subnet.subnet-pub
   description = " public subnet"
}