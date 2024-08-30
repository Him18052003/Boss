resource "aws_instance" "test" {
    ami = "ami-02b49a24cfb95941c"
    instance_type = "t2.micro"
    key_name = "CSS-Keypair"

    for_each = toset(var.test)
    
  tags = {
    Name = each.value
    
  }
}

variable "test" {
    type = list(string)
    default = [ "dev", "count", "toy"]
  
}
