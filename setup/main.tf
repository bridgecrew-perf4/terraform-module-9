
provider {
   name  =  "aws"
   version => "0.12.2"
   region = var.region
}

module "add-tags" {
   source   =  "../module/add-tags"
}

