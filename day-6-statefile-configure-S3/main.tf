resource "aws_instance" "bro" {
    ami = "ami-02b49a24cfb95941c"
    instance_type = "t2.micro"
    key_name = "CSS-Keypair"
    
  tags = {
    Name = "bro-backend"
  }
}
provider "aws" {
  region = "ap-south-1"
}