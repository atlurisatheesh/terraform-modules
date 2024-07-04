resource "aws_security_group" "allow ssh" {
    name = "allow ssh"
    description = "allow all the inbound rules"

    ingress = {
        description = "allow ssh port"
        from        = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allows_public_ssh"
  }
  
}

output "sgid" {
    value = aws_security_group.allows_ssh.id
}