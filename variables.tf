variable "aws_region" {
    description = "AWS region where resource is created"
    type = string 
    default = "ap-south-1"
}

variable "aws_profile" {
    type = string
    default = "default"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "AWS Key Pair name"
  type        = string
}

variable "security_group_name" {
  description = "Name of the security group"
  type        = string
  default     = "ec2-security-group"
}

variable "ami_id" {
  default = "ami-02a2af70a66af6dfb"  
}