# provider "aws" {
#   region = var.aws_region
# }

# #create security group with firewall rules
# resource "aws_security_group" "my_security_group" {
#     name = var.security_group
#     description = "security group for ec2 instance"

#     ingress {
#         from_port = 8080
#         to_port = 8080
#         protocol = "tcp"
#         cidr_block = ["0.0.0.0/0"]
#     }

#     ingress {
#         from_port = 22
#         to_port = 22
#         protocol = "tcp"
#         cidr_block = ["0.0.0.0/0"]
#     }

# # outboun rules for jenkins server
#      egress {
#         from_port = 0
#         to_port = 65535
#         protocol = "tcp"
#         cidr_block = ["0.0.0.0/0"]
#     }

#     tags = {
#       Name = var.security_group
#     }
# }

# # create an ec2 instance 

# resource "aws_instance" "myfirstInstance" {
#     ami = var.ami_id
#     key_name = var.key_name
#     instance_type = var.instance_type
#     security_groups = [var.security_group]
#     tags = {
#       Name = var.tag_name
#     }
# }

# #creste elastique IP address
# resource "aws_eip" "myfirstInstance" {
#     vpc = true
#     instance = aws_instance.myfirstInstance.id
#     tags = {
#       Name = "my_elastique_IP"
#     }
# }