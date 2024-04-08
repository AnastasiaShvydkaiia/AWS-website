output "loadbalancer_url" {
  value = aws_lb.my_lb.dns_name
}
