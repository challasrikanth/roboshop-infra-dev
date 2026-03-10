locals {


  common_tags = {
    Project = var.project
    Environment = var.environment
    Terraform = true

  
  }

    ami_id = data.aws_ami.joindevops.id
    mongodb_sg_id = data.aws_ssm_parameter.mongodb_sg_id.value
    database_subnet_id = split (",", data.aws_ssm_parameter.database_subnet_ids.value)[0]
    redis_sg_id = data.aws_ssm_parameter.redis_sg_id.value
    mysql_sg_id = data.aws_ssm_parameter.mysql_sg_id.value
    rabbitmq_sg_id = data.aws_ssm_parameter.rabbitmq_sg_id.value

    mysql_role_name = join ("-", [ for name in ["${var.project}","${var.environment}", "mysql"] :title(name)])

     mysql_policy_name = join("", [
            for name in ["${var.project}","${var.environment}", "mysql"] : title(name)
        ])

}