terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "6.33.0"
    }
  }

  backend "s3" {
    bucket = "terraform-dev-backend-s3"
    key = "roboshop-dev-database"
    region = "us-east-1"
    use_lockfile = true
    encrypt = true
    
  }
}

provider "aws" {
    region = "us-east-1"
  
}