variable "access_key" {}
variable "secret_key" {}
variable region {
  type = string
  default="us-east-1"
}
variable instance_type {
  type = string
  description = "type of an instance"
  default  = "t2.micro"
}
variable "max_size" {
    type = number
    description = "max number of ec2 instances"
    default = 5
}
variable "min_size" {
    type = number
    description = "min number of ec2 instances"
    default = 2
}
variable "desired_capacity" {
    type = number
    description = "desired capacity"
    default = 2
}
variable "health_check_type" {
    type = string
    description = "asg health check type"
    default = "ELB"
}

