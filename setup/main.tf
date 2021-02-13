
provider "aws" {
   region = var.region
}

module "add-tags" {
   source   =  "../module/add-tags"
   tags = var.mytags
}

output "mod-info" {
   value = module.add-tags.vpc-selected
}