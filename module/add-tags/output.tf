
/* output "vpc_info" {
   value = aws_vpc.vpc-selected
}

output "subnet-info" {
   value = aws_subnet.subnet-pub
} */
/* output "instance" {
   value = aws_instance.odoo-ec2.public_ip
   description = "show public ip of instance"
} */
output "vpc_info" {
   value = data.aws_vpc.vpc-selected
}

output "subnet-info" {
   value = data.aws_subnet.subnet-pub
   description = " public subnet"
}