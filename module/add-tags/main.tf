/* 
data "aws_vpc" "vpc-selected" {
   id = var.vpc_id
   filter {
      name = "tag:Name"
      values = ["Main"]
   }
}

resource "aws_vpc" "vpc-1" {
   id = aws_vpc.vpc-selected.id
   tags = var.mytags
}


data "aws_subnet" "subnet-pub"{
   id = var.subnet_name
}

resource "aws_subnet" "subnet-1" {
   id = aws_subnet_id.subnet-pub.id
   tags = var.mytags
} */