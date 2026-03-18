terraform {
  required_providers {
    aws = {
    source =  "hashicorp/aws"
    version =  "6.33.0"
  }
}
backend "s3" {

    bucket = "terraform-dev-backend-s3"
    key = "roboshop-dev-sg"
    region = "us-east-1"
    encrypt = true
    use_lockfile = true
    }
}

provider "aws" {
    region = "us-east-1"
  
}