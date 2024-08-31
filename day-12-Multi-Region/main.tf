provider "aws" {

region = "ap-south-1"
  alias = "mumbai"
}

provider "aws" {
    region = "us-west-2"
  alias = "oregon"
}
resource "aws_s3_bucket" "mumbai" {
    bucket = "himooooo"
    provider = aws.mumbai
  
}
resource "aws_s3_bucket" "oregon" {
bucket = "javappppppppppp"  
provider = aws.oregon
}

