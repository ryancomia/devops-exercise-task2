resource "random_pet" "smartcow" {}

# creates a vpc
resource "aws_vpc" "devtest" {
    cidr_block = var.cidr

    tags = {
        name = "vpc-devopstest"
    }
}

# creates an internet gateway
resource "aws_internet_gateway" "devtest" {
  vpc_id = aws_vpc.devtest.id

   tags = {
        name = "igw-devopstest"
    }  
}

# creates a subnet
resource "aws_subnet" "devtest" {
    vpc_id = aws_vpc.devtest.id
    cidr_block = var.ec2_subnet_1
    map_public_ip_on_launch = true

    depends_on = [aws_internet_gateway.devtest]

    tags = {
        name = "subnet-devopstest"
    }
}

# creates a network interface
resource "aws_network_interface" "devtest" {
    subnet_id = aws_subnet.devtest.id
    private_ips = [var.private_ip]

     tags = {
        name = "nic-devopstest"
    }
}

# creates a security group
resource "aws_security_group" "devtest" {
    name = "${random_pet.smartcow.id}-sg"
    vpc_id = aws_vpc.devtest.id
    ingress {
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks  = ["0.0.0.0/0"]    
    }

    tags = {
        name = "sg-devopstest"
    }  
}

# creates an ec2 instance
resource "aws_instance" "devtest" {
  ami           = var.ami
  instance_type = var.instance_type

  network_interface {
      network_interface_id = aws_network_interface.devtest.id
      device_index         = 0
    }
  ebs_block_device {
    device_name = "persistent-data"
    volume_size = 8
        tags = {

            name = "ebs-devopstest"
        }

  }   
     tags = {
        name = "ec2-devopstest"
    } 
}

# creates a public ip and attaches to the instance
resource "aws_eip" "devtest" {
  vpc                       = true
  instance                  = aws_instance.devtest.id
  associate_with_private_ip = var.private_ip
  depends_on                = [aws_internet_gateway.gw]

     tags = {
        name = "elasticip-devopstest"
    } 
}