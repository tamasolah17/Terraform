resource "aws_instance" "my_ec2" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [var.security_group]

  tags = {
    Name = "Terraform-EC2"
  }
}
