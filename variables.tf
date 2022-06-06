variable "cidr" {
  type        = string
  description = "network range"
  default     = "10.10.0.0/16"
}

variable "ec2_subnet_1" {
  type        = string
  description = "first subnet"
  default     = "10.10.10.0/24"
}

variable "private_ip" {
  type = string
  description = "assigned private ip for instance"
  default = "10.10.10.10"
}

variable "ami" {
  type        = string
  description = "amazon linux img" 
  default     = "ami-5189a661" # us-west-2
}

variable "instance_type" {
  type        = string
  description = "vm size"
  default     = "t2.micro"
}

# random pass
variable "length" {
  type        = string
  description = "random password length"
  default     = "16"  
}
