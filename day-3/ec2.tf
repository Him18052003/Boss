#Launch Instance
resource "aws_instance" "prod" {
  ami = "ami-02b49a24cfb95941c"
  instance_type = "t2.micro"
  key_name = "CSS-Keypair"
  subnet_id = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  tags = {
    name = "My EC2"
  }
  
}