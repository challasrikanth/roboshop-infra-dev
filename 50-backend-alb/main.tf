resource "aws_lb" "backend-lb" {
  name               = "${var.project}-${var.environment}"
  internal           = true
  load_balancer_type = "application"
  security_groups    = [local.backend_alb_sg_id]
  subnets            = local.private_subnet_ids

  enable_deletion_protection = false


  tags = {
    Environment = "production"
  }
}



resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.backend-lb.arn
  port              = "80"
  protocol          = "HTTP"
  default_action {
    type = "fixed-response"
    fixed_response {
      content_type = "text/html"
      message_body = "<h1> We'll be back soon!</h1>"
      status_code  = "200"
    }
  }
}


resource "aws_route53_record" "alb_alias" {
zone_id = var.zone_id
name = "*.backend-alb-${var.environment}.${var.domain_name}"# or subdomain like "app.example.com"
type = "A"

alias {
name = aws_lb.backend-lb.dns_name
zone_id = aws_lb.backend-lb.zone_id
evaluate_target_health = true
}
}