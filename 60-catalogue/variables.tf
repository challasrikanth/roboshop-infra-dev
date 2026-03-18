data "aws_ami" "joindevops" {
  most_recent      = true
  owners           = ["973714476881"]

  filter {
    name   = "name"
    values = ["Redhat-9-DevOps-Practice"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}



variable "environment" {
  default = "dev"

}
variable "project" {
  default = "roboshop"
}

variable "zone_id" {
    default = "Z0870789D4NHZLFW5FLZ"
  
}

variable "domain_name" {
    default = "srikanthchalla.online"
  
}

