
output "vpc_info" {
   value = aws_vpc.vpc-update
}

output "instance" {
   value = aws_instance.odoo-ec2.public_ip
   description = "show public ip of instance"
}