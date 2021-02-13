
data "aws_vpc" "vpc-selected" {
   vpc_id = var.vpc_id
   filter {
      name = "tag:Name"
      values = ["Main"]
   }
}
resource "aws_vpc" "vpc-selected" {
   tags = var.mytags
}


data "aws_subnet" "subnet-pub"{
   subnet_id = var.subnet_id
   cidr_block = var.cidr_block
}

resource "aws_subnet" "subnet-pub" {
   tags = var.mytags
}