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

variable "vpc_cidr_block" {
  description = "The IPv4 CIDR block for the VPC."
  default     = "10.0.0.0/16"
}

variable "public_subnet_1_cidr_block" {
  description = "The IPv4 CIDR block for the public subnet 1."
  default     = "10.0.1.0/24"
}

variable "public_subnet_1_availability_zone" {
  description = "The availability zone for the public subnet 1."
  default     = "us-east-1a"
}

variable "public_subnet_2_cidr_block" {
  description = "The IPv4 CIDR block for the public subnet 2."
  default     = "10.0.2.0/24"
}

variable "public_subnet_2_availability_zone" {
  description = "The availability zone for the public subnet 2."
  default     = "us-east-1b"
}

variable "private_subnet_1_cidr_block" {
  description = "The IPv4 CIDR block for the private subnet 1."
  default     = "10.0.3.0/24"
}

variable "private_subnet_1_availability_zone" {
  description = "The availability zone for the private subnet 1."
  default     = "us-east-1a"
}

variable "private_subnet_2_cidr_block" {
  description = "The IPv4 CIDR block for the private subnet 2."
  default     = "10.0.4.0/24"
}

variable "private_subnet_2_availability_zone" {
  description = "The availability zone for the private subnet 2."
  default     = "us-east-1b"
}
