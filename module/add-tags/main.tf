
data "aws_vpc" "vpc-selected" {
   id = var.vpc_id
   filter {
      name = "tag:Name"
      values = ["Main"]
   }
}

resource "aws_vpc" "vpc1" {
   id = data.aws_vpc.vpc-selected.id
   cidr_block = data.aws_vpc.vpc-selected.cidr_block
   tags = var.mytags
}


data "aws_subnet" "subnet-pub"{
   id = var.subnet_id
}