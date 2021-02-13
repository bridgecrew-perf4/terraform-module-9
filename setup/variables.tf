variable "region" {
   type = string
   default = "ap-northeast-1"
}


variable "cidr_block" {
   type  =  string
   default =   "10.0.0.0/16"
}

variable "subnet_id" {
   type  =  string
   default =   "subnet-53d86f78"
}

variable "vpc_id" {
   type  =  string
   default =   "vpc-e63edd80"
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

variable "mytags" {
   type = object({
      Author = string
      Version = number
   })
   default = {
      Author = "Gazali"
      Version = 12
   }
}
