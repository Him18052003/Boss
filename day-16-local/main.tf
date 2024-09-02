locals {
  region = "ap-south-1"
  environment = "test"
  instance_type = "t2.micro"

}

resource "aws_instance" "name" {
      ami = "ami-02b49a24cfb95941c"
  instance_type = local.instance_type

    tags = {
    Name        = "ExampleInstance"
    Environment = local.environment
  }
}


  