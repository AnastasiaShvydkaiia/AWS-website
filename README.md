# Hosting a Simple Webpage On AWS

## About The Project:

This project is built using AWS resources and Terraform.
![arcitecture](https://github.com/AnastasiaShvydkaiia/AWS-website/assets/166436183/0cb08d80-c555-488f-aef1-b9dc1d3df366)
- This architecture is built to host a static webspage on AWS EC2 instances.
- The instances will be spread across two Availability Zones for High Availability
- Launch template will provision the instances with specified parameters and user-data
- Application Load Balancing (ALB) is used to direct traffic to specific instances. 
- Auto Scaling Group automatically adds servers during high traffic periods and reduce them when traffic decreases
- Instances will have httpd installed and it will be accessed though ALB DNS name.

## Prerequisites:
- Create a free tier AWS account.
- Create an IAM user with programmable access.
- Make a note of the access and secret keys.

## Usage:
Hosting this website involves four steps:

+ Step1 : cd into the infrastructure folder in the cloned repository and run the following command
```
terraform init
```
+ Step 2: specify access key and secret key 
+ Step 3: run the following commands in order to provision the required infrastructure and provide the ALB DNS name as the output
```
terraform plan
terraform apply
```
+ Step 4: to tear down the infrastructure run the below command
```
terrafrom destroy
```
<!-- BEGIN_Specification: -->
## Specification:

### Provider
| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.7.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.16 |

### Inputs
| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="access_key"></a> [access\_key](#input\_access\_key) | access key | `string` | n/a | yes |
| <a name="secret_key"></a> [secret\_key](#input\_secret\_key) | secret key | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | general | `string` | us-east-1 | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | type of an instance | `string` | t2.micro | no |
| <a name="input_desired_capacity"></a> [desired\_capacity](#input\_desired\_capacity) | desired capacity | `number` | 2 | no |
| <a name="input_max_size"></a> [max\_size](#input\_max\_size) | max number of ec2 instances | `number` | 5 | no |
| <a name="input_min_size"></a> [min\_size](#input\_min\_size) | min number of ec2 instances | `number` | 2 | no |
| <a name="input_health_check_type"></a> [health\_check\_type](#input\_health\_check\_type) | asg health check type | `string` | ELB | no |

### Outputs

| Name | Description |
|------|-------------|
| <a name="loadbalancer_url"></a> [loadbalancer\_url](#output\_loadbalancer\_url) | Load Balancer DNS name  |

<!-- END_Specification: -->

## Conclusion:
Terraform is an Infrastructure as Code tool that allows to build, modify, and manage cloud infrastructure in an understandable and replicable way.  
Through this terraform automation was provisioned a highly available and autoscalable fleet of EC2 instances with installed Apache Web Server to host a simple website.
