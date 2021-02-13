
provider "aws" {
   region = var.region
}

module "add-tags" {
   source   =  "../module/add-tags"
}


output "vpc_info" {
   value = data.aws_vpc.vpc-selected
}

output "subnet-info" {
   value = data.aws_subnet.subnet-pub
   description = " public subnet"
}