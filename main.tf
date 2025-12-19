provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my_instance" {
  ami           = "ami-0c02fb55956c7d316"  # Amazon Linux 2 in us-east-1
  instance_type = var.instance_type
  subnet_id     = var.aws_subnet.default.id

  tags = {
    Name = var.instance_name
  }
}
