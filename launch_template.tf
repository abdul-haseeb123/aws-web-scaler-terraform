resource "aws_launch_template" "web_launch_template" {
  name_prefix            = "aws_web_scaler_template_"
  description            = "launch template for aws ec2 instances"
  image_id               = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  user_data              = filebase64("user-data-az.sh")
  tags = {
    Name = "AWSWebScalerLaunchTemplate"
  }
}