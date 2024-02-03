variable "region" {
  description = "The AWS region where resources will be created."
}

variable "access_key" {
  description = "The AWS access key."
}

variable "secret_key" {
  description = "The AWS secret access key."
}

variable "vpc_cidr_block" {
  description = "The IPv4 CIDR block for the VPC."
}

variable "public_subnet_1_cidr_block" {
  description = "The IPv4 CIDR block for the public subnet 1."
}

variable "public_subnet_1_availability_zone" {
  description = "The availability zone for the public subnet 1."
}

variable "public_subnet_2_cidr_block" {
  description = "The IPv4 CIDR block for the public subnet 2."
}

variable "public_subnet_2_availability_zone" {
  description = "The availability zone for the public subnet 2."
}

variable "private_subnet_1_cidr_block" {
  description = "The IPv4 CIDR block for the private subnet 1."
}

variable "private_subnet_1_availability_zone" {
  description = "The availability zone for the private subnet 1."
}

variable "private_subnet_2_cidr_block" {
  description = "The IPv4 CIDR block for the private subnet 2."
}

variable "private_subnet_2_availability_zone" {
  description = "The availability zone for the private subnet 2."
}
