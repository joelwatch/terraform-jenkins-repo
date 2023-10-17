variable "aws_region" {
    description = "the aws region to create my environment"
    default = "us-east-2"
}

variable "key_name" {
    description = "SSH key to connect to ec2 instance"
    default = "Ohiokp"
}

variable "instance_type" {
    description = "instance type for ec2 "
    default = "t2.micro"
}

variable "security_group" {
    description = "Name of my security group"
    default = "jenkins-sg-2023"
}

variable "tag_name" {
    description = "tag of my ec2 instances"
    default = "my-ec2-instance"
}

variable "ami_id" {
    description = "aim for ubuntu ec2 instance"
    default = "ami-0430580de6244e02e"
}

variable "versioning" {
    type = bool
    description = "a state of versionning"
    default = true
}

variable "acl" {
    type = string
    description = "default to private"
    default = "private"
}

variable "bucket_prefix" {
    type = string
    description = "(required since we aren't using 'bucket') create a unique bucket name beginning with the spqcified prefix"
    default = "my-s3bucket-"
}

variable "tags" {
    type = map
    description = "a mapping of tags to assign to the bucket"
    default = {
        environment = "DEV"
        terraform = "true"
    }
}