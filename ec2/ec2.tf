resource "aws_instance" "Terraform" {
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform"
  }
}