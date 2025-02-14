variable "aws_region" {
  description = "The AWS region to deploy resources into"
  type        = string
  default     = "us-east-1"
}

variable "vpc_id" {
  description = "The ID of the existing VPC"
  type        = string
}

variable "public_subnet_id" {
  description = "The ID of a public subnet within the VPC"
  type        = string
}

variable "instance_type" {
  description = "The EC2 instance type to use for the bastion host"
  type        = string
  default     = "t2.micro"
}

variable "ami" {
  description = "The AMI ID for the bastion host"
  type        = string
}

variable "key_name" {
  description = "The name of the SSH key pair to use for the instance"
  type        = string
}

variable "allowed_cidr_blocks" {
  description = "A list of CIDR blocks allowed to SSH into the bastion host"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}
