resource "aws_lb_target_group" "web_target_group" {
  name     = "aws-web-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id = data.aws_vpc.default_vpc.id
}

resource "aws_lb" "web_load_balancer" {
  name               = "aws-web-load-balancer"
  internal           = false
  load_balancer_type = "application"
  subnets = data.aws_subnets.default_subnets.ids
  security_groups = [aws_security_group.web_sg.id]
}

resource "aws_lb_listener" "web_load_balancer_listener" {
  load_balancer_arn = aws_lb.web_load_balancer.arn
  port = "80"
  protocol = "HTTP"
  default_action {
    type = "forward"
    target_group_arn = aws_lb_target_group.web_target_group.arn
  }
}