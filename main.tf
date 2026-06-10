module "security_group" {
  source = "./modules/security-group"
}

module "ec2_instance" {
  source = "./modules/ec2"

  ami_id         = var.ami_id
  instance_type  = var.instance_type
  security_group = module.security_group.security_group_id
}
resource "aws_s3_bucket" "app_bucket" {
  bucket = "my-company-app-bucket-12345"
}
