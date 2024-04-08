resource "aws_autoscaling_group" "my_autoscaling_group" {
  name                      = "my_autoscaling_group"
  max_size                  = var.max_size
  min_size                  = var.min_size
  health_check_type         = var.health_check_type 
  desired_capacity          = var.desired_capacity
  target_group_arns         = [aws_lb_target_group.my_target_group.arn]

  vpc_zone_identifier       = [aws_default_subnet.public_subnet_a.id, aws_default_subnet.public_subnet_b.id]
  
  launch_template {
    id      = aws_launch_template.my_launch_template.id
    version = "$Latest"
  }
}
