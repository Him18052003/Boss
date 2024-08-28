provider "aws"{
    region = "ap-south-1"
}
  resource "aws_instance" "name" {
  ami = "ami-02b49a24cfb95941c"
  instance_type = "t2.micro"
  key_name = "CSS-Keypair"
  subnet_id = data.aws_subnet.subnet.id
  
tags= {
    name = "My EC2"
  }
}
 data "aws_subnet" "subnet" {
  filter {
    name = "tag:Name"
    values = ["private"]
  }
  
}
resource "aws_s3_bucket" "name" {
    bucket = "himanshuuu"
    depends_on = [ aws_instance.name ]
}