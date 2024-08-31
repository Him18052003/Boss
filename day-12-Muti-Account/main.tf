provider "aws" {
    region = "ap-south-1"
    profile = "default"
    alias = "mumbai"

  
}
provider "aws" {
    region = "us-west-2"
  alias = "oregon"
    profile = "Rahul"
}

resource "aws_s3_bucket" "AWS" {
    bucket = "abcdhaaaa"
    provider = aws.oregon
  
}
resource "aws_s3_bucket" "DEV" {
    bucket = "terarrra"
    provider = aws.mumbai
  
}