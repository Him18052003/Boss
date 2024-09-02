resource "aws_instance" "him" {
  ami = "ami-02b49a24cfb95941c"
  instance_type = "t2.micro"
  availability_zone = "ap-south-1"
  key_name = "CSS-Keypair"
}