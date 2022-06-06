terraform {
  required_version = ">= 0.12.24"

  backend "s3" {
    bucket = "ryancomia-devopstest"
    key = "devopstest.tfstate"
    region = "ap-southeast-1"
  }
}

provider "aws" {
  region = "ap-southeast-1"

}