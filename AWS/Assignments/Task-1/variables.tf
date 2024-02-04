variable "region" {
  description = "The AWS region where resources will be created."
  default     = "us-east-1"
}

variable "access_key" {
  description = "The AWS access key."
}

variable "secret_key" {
  description = "The AWS secret access key."
}

variable "ami_id" {
  description = "Id of the AMI to be used to launch the EC2 instance."
}

variable "subnet_id" {
  description = "The id of the subnet where the EC2 instance will be provisioned."
}

variable "key_name" {
  description = "The key pair name used for SSH connection to the EC2 instance."
}

variable "vpc_sg_grp_ids" {
  description = "The list of security group ids attached to the VPC."
  type        = list(string)
}

