terraform {
  backend "s3" {
    bucket         = "norbis-terraform-state-292294667119"
    key            = "terraform-demo/terraform.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
