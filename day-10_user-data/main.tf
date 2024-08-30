resource "aws_instance" "prod" {
  ami = "ami-02b49a24cfb95941c"
  instance_type = "t2.micro"
  key_name = "CSS-Keypair"
  user_data = file("test.sh")
}
