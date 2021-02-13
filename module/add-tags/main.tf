
data "aws_vpc" "mod-vpc" {
   vpc_id = var.vpc_id
   filter {
      Name = "tut-vpc"
   }
}

data "aws_subnet" ""