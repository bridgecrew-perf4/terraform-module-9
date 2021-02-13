
provider "aws" {
   region = var.region
}

module "add-tags" {
   source   =  "../module/add-tags"
}



output "mod-info" {
   value = module.add-tags
}

