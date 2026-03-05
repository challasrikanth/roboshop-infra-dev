module "vpc" {
    source = "git::https://github.com/challasrikanth/terraform-aws-vpc.git?ref=main"
    project = var.project
    environment = var.environment

  
}


