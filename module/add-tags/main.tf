
data "aws_vpc" "vpc-selected" {
   filter {
      name = "Name"
      value = ["Main"]
   }
}
resource "aws_vpc" "vpc-selected" {
   tags = var.mytags
}


data "aws_subnet" "subnet-pub"{
   cidr_block = var.cidr_block
}

resource "aws_subnet" "subnet-pub" {
   tags = var.mytags
}