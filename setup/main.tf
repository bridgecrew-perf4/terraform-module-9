
provider "aws" {
   region = var.region
}

module "add-tags" {
   source   =  "../module/add-tags"
}
