
variable "cidr_block" {
   type  =  string
   default =   "10.0.0.0/16"
}
variable "subnet-pub" {
   type = string
   description = "public sunet"
   default =   "10.0.100.0/24"
}

variable "subnet-priv" {
   type = string
   description = "private sunet"
   default =   "10.0.10.0/24"
}

variable "my-tags" {
   type = object({
      Author = string
      Version = number
   })
}
