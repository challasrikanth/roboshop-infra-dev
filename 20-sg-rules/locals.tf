locals {
  bastion = data.aws_ssm_parameter.bastion_sg_id.value
  mongodb = data.aws_ssm_parameter.mongodb_sg_id.value
  catalogue = data.aws_ssm_parameter.catalogue_sg_id.value
  redis = data.aws_ssm_parameter.redis_sg_id.value
  user = data.aws_ssm_parameter.user_sg_id.value
  }