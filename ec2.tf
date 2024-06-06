# resource "aws_instance" "myfirstinstance_1c" {
#   ami                    = var.ami
#   instance_type          = var.instance_type
#   key_name               = var.key_name
#   vpc_security_group_ids = [aws_security_group.web_sg.id]
#   tags = {
#     Name = "MyFirstInstance_1c"
#   }
# }
