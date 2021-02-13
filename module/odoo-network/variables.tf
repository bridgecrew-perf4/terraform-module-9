/* variable "region" {
   type = string
   description = "add region to resources"
} */

/* variable "vpc_id" {
   type = string
   description = "vpc id"
} */

variable "cidr_block" {
   type  =  string
   default =   "10.0.0.0/16"
}
variable "subnet-pub" {
   type = string
   description = "public sunet"
}
variable "subnet-priv" {
   type = string
   description = "private sunet"
}


variable "my-tags" {
   type = object({
      Author = string
      Version = number
   })
} 
