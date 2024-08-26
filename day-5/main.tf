
resource "aws_instance" "Tour" {
    ami = "ami-02b49a24cfb95941c"
    instance_type = "t2.micro"
    availability_zone = "ap-south-1a"
    key_name = "CSS-Keypair"
    
  tags = {
    Name = "Tour"
  }

}
resource "aws_s3_bucket" "dev" {
    bucket = "suraj-devops-awss"
  
}
#-------Locking provision for statefile -------------------#
resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
  name = "terraform-state-lock-dynamo"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20
 
  attribute {
    name = "LockID"
    type = "S"
  }
}