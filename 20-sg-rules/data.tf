data "aws_ssm_parameter" "bastion_sg_id" {
    name = "/${var.project}/${var.environment}/bastion"
  
}


data "aws_ssm_parameter" "mongodb_sg_id" {
    name = "/${var.project}/${var.environment}/mongodb"
  
}

data "aws_ssm_parameter" "redis_sg_id" {
    name = "/${var.project}/${var.environment}/redis"
}

data "aws_ssm_parameter" "catalogue_sg_id" {
    name = "/${var.project}/${var.environment}/catalogue"
}

data "aws_ssm_parameter" "user_sg_id" {
    name = "/${var.project}/${var.environment}/user"
}

data "aws_ssm_parameter" "mysql_sg_id" {
    name = "/${var.project}/${var.environment}/mysql"
}

data "aws_ssm_parameter" "rabbitmq_sg_id" {
    name = "/${var.project}/${var.environment}/rabbitmq"
}