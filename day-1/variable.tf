variable "ami" {
    description = "inserting ami values to main.tf"
    type = string
    default = "ami-02b49a24cfb95941c"
  
}

variable "instance_type" {
    description = "inserting instance type to main.tf"
    type = string
    default = "t2.micro"
  
}
variable "key_name" {
    type = string
    default = "CSS-Keypair"
  
}