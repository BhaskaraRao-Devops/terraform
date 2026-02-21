
data "aws_instance" "mongodb" {
    instance_id = "i-058b46ba9568dc84b"
}

output "mongodb_info" {
    value = data.aws_instance.mongodb.public_ip
}