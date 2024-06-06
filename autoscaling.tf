resource "aws_autoscaling_group" "web_autoscaling_group" {
  name               = "aws-web-autoscaling-group"
  desired_capacity   = 2
  min_size           = 2
  max_size           = 4
  availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c"]
  launch_template {
    id      = aws_launch_template.web_launch_template.id
    version = "$Latest"
  }
  target_group_arns = [aws_lb_target_group.web_target_group.arn]
}