resource "aws_launch_template" "my_launch_template" {
  name                   = "my_launch_template"
  image_id               = data.aws_ami.linux.id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.my_security_group.id]
  user_data              = filebase64("${path.module}/user-data-az.sh")
}
