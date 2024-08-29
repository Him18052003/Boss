module "git" {
    source = "github.com/Him18052003/Boss/day-1"
    ami = "ami-02b49a24cfb95941c"
  instance_type = "t2.micro"
  key_name = "CSS-Keypair"
}
