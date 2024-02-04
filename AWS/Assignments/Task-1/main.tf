terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.35.0"
    }
  }
}

provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

# data "aws_ami" "amz_linux" {
#   most_recent = true

#   filter {
#     name   = "name"
#     values = ["Amazon Linux 2023 AMI"]
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }

#   owners = ["812227906731"]
# }


resource "aws_instance" "nginx" {
  ami                         = var.ami_id
  instance_type               = "t2.micro"
  subnet_id                   = var.subnet_id
  key_name                    = var.key_name
  associate_public_ip_address = true
  vpc_security_group_ids      = var.vpc_sg_grp_ids
  user_data                   = <<-EOF
#!/bin/bash
apt-get update
apt-get install -y nginx
systemctl start nginx
systemctl enable nginx
EOF

  tags = {
    Name = "Instance-TF"
  }
}
