resource "aws_instance" "Terraform" {
 count= 4
 ami = var.ami_id
 #instance_type= var.instance_type 
 instance_type= var.env=="dev" ? "t3.micro" : "t3.large"
 vpc_security_group_ids = [aws_security_group.tester.id]


 tags = var.ec2_tags
}
resource "aws_security_group" "tester" {
  name   = "tester"

  egress {
    from_port        = 0 # from port 0 to to port 0 means all ports
    to_port          = 0 
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = ["0.0.0.0/0"] # internet
  }

  ingress {
    from_port        = 0 # from port 0 to to port 0 means all ports
    to_port          = 0 
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = ["0.0.0.0/0"] # internet
  }

  tags = {
    Name = "tester"
  }

}