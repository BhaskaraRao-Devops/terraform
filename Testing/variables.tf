variable "ami_id" {
    default ="ami-0220d79f3f480ecf5"
}

variable "instance_type" {
    default= "t3.micro"
}

variable "ec2_tags"{
    default = {
        Name="Testing-terraform"
        Terraform="true"
        Project="Roboshop"
    }
}

variable "env" {
    default = "qa"
}