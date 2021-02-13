
provider "aws" {
   region = var.region
}

module "add-tags" {
   source   =  "../module/add-tags"
}

resource "aws_subnet" "subnet-in" {
   id = data.aws_subnet.subnet_id
   tags = var.mytags
}

output "mod-info" {
   value = module.add-tags
}

output "subnet-info" {
   value = resource.aws_subnet.subnet-in
}