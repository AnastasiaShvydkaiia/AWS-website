resource "aws_default_subnet" "public_subnet_a" {
  availability_zone = data.aws_availability_zones.available.names[0]
}

resource "aws_default_subnet" "public_subnet_b" {
  availability_zone = data.aws_availability_zones.available.names[1]
}
