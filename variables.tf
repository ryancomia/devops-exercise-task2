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
  default     = "ami-0bd6906508e74f692" # ap-se-1 linux 2
}

variable "instance_type" {
  type        = string
  description = "vm size"
  default     = "t2.micro"
}

variable "sshkey" {
  type        = string
  description = "ssh key"
  default     = "key-for-devtest"  
}

variable "public_key" {
  type        = string
  description = "my public key"
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDHMcjcgsnGfNOcQjKRhspsOnZJEUPdi/r90pc/65MJLSJDVFmbmSY25Rx7JkpvBlKVGLGamSv5Jd/LVbEXnicqm6mDgKBWMlwP/eSmyYy98WcXLpjCo5wKjphgUY1p2J7KqU+isq1Kv1FWllLdCohRB/4ZMBbN0lQsQ0joLh3mdndALCg9oIWLE0FDdnp6Sk0pTktL9X+yRy2qAHVmohWxwBWTlhWmEzrqqMqjw2BkI/eH50zeMvAPuG3wUJCksD4sbTidmHmiF7tEJEAFDTzjmqvXy65EepLoz9OBmR+rDv9wdSnvtK5K3cROmro0UqSgHdlbeg/VO2g3aFuUbf9l yeye@apples-MacBook-Pro-3.local" 
}