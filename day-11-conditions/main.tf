resource "aws_instance" "name" {
ami = "ami-02b49a24cfb95941c"
instance_type = "t2.micro"
key_name = "CSS-Keypair"
count = var.name == "t2.micro" ? 1 : 0
}

variable "name" {
    type = string
  default = "t2.micro"
}
variable "ami" {
    type = string
    default = "ami-02b49a24cfb95941c"
  
}