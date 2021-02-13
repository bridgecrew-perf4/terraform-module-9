
variable "region" {
   type = string
   description = "add region to resources"
}

variable "vpc_id" {
   type = string
   description = "vpc id"
}

variable "cidr_block" {
   type  =  string
   default =   "10.0.0.0/16"
}

variable "vpc-tags" {
   type = object({
      Author = string
      Version = number
   })
}
