terraform {
  backend "s3" {
 bucket = "suraj-devops-awss"
    key = "terraform.tfstatefile"
    region = "ap-south-1"
  }
}