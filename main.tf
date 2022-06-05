terraform {
  required_version = ">= 0.12.24"

  backend "s3" {
    bucket = var.bucket
    key = var.key
    region = var.region    
  }
}

provider "aws" {
  region = var.region
}

