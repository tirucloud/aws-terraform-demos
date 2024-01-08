## Defining Variables to be used

variable "region" {
  description = "The AWS region to create resources in."
  default = "us-east-1"
}
variable "tag" {
  description = "Name"
  default = "ALB-setup"
}
variable "vpc_cidr" {
  default     = "10.0.0.0/16"
  description = "CIDR block of the vpc"
}
variable "public_subnet_cidr1" {
  default     = "10.0.1.0/24"
  description = "CIDR block for Public Subnets"
}
variable "public_subnet_cidr2" {
  default     =  "10.0.2.0/24"
  description = "CIDR block for Public Subnets"
}
variable "private_subnet_cidr1" {
  default     =  "10.0.4.0/24"
  description = "CIDR block for Private Subnets"
}
variable "private_subnet_cidr2" {
  default     =  "10.0.3.0/24"
  description = "CIDR block for Private Subnets"
}
variable "az1" {
    default = "us-east-1a"
}
variable "az2" {
    default = "us-east-1b" 
}
variable "os" {
    description = "Which AMI to spawn"
    default = "ami-08a52ddb321b32a8c"
}
variable "instance" {
    default = "t2.micro"
}
variable "health_check" {
  description = "Health check path for the default target group"
  default     = "/"
}

variable "autoscale_min" {
  description = "Minimum autoscale (number of EC2)"
  default     = "2"
}
variable "autoscale_max" {
  description = "Maximum autoscale (number of EC2)"
  default     = "2"
}
variable "autoscale_desired" {
  description = "Desired autoscale (number of EC2)"
  default     = "2"
}
variable "public-key-path" {
  type = string
  default = "ssh/ec2-bastion.pub"
}
variable "private-key-path" {
  type = string
  default = "ssh/ec2-bastion.pem"
}
variable "key-nam" {
  default = "ec2-bastion"
}
variable "ec2-bastion-cidr" {
  type = string
  default = "0.0.0.0/0"
}
