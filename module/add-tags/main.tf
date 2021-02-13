
data "aws_vpc" "vpc-selected" {
   id = var.vpc_id
   filter {
      name = "tag:Name"
      values = ["Main"]
   }
}


data "aws_subnet" "subnet-pub"{
   id = var.subnet_id
}