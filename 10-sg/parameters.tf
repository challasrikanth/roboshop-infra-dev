resource "aws_ssm_parameter" "sg_id" {

count = length(var.sg_name)
type = "String"
name = "/${var.project}/${var.environment}/${var.sg_name[count.index]}_sg_id"
value = module.sg[count.index].sg_id

#.sg_id → fetch sg_id output from each
 
}