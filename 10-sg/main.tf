module "sg" {
count = length(var.sg_name)
source = "git::https://github.com/challasrikanth/terraform-aws-sg.git?ref=main"
project = var.project
environment = var.environment
sg_name = var.sg_name[count.index]
vpc_id = local.vpc_id
 

}