resource "aws_instance" "my-ec2" {
    ami                    = "ami-04b70fa74e45c3917"
    instance_type          = "t2.micro"
    vpc_security_group_ids = [var.sg]

    tags = {
      "name" = "terrafor_module"
    }
  
}

variable "sg" {}

output "publicip" {
  value = aws_instance.my-ec2.public_ip
}