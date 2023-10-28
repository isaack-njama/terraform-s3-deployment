terraform {
  backend "s3" {
    bucket     = "project-remote-backend-in-bucket"
    key        = "terraform.tfstate"
    region     = "us-west-2"
  }
}