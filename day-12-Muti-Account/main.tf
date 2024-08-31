provider "aws" {
    profile = "default"
    alias = "default"

  
}
provider "aws" {
    profile = "account2"
  alias = "account2"
}

resource "aws_s3_bucket" "AWS" {
    bucket = "abcdhaaaa"
    provider = aws.account2
  
}
resource "aws_s3_bucket" "DEV" {
    bucket = "terarrra"
    provider = aws.default
  
}