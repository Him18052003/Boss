module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "single-instance"

  ami = "ami-02b49a24cfb95941c"
  instance_type          = "t2.micro"
  key_name               = "CSS-Keypair"
  monitoring             = true
  subnet_id              = "subnet-00784e6c5f5a7de26"

  
}