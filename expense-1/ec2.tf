resource "aws_instance" "expense" {
    count = length(var.instance_names)
    ami = "ami-0220d79f3f480ecf5"
    instance_type = var.instance_names[count.index] == "mysql" ? "t3.small" : "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]

    tags = merge (

        var.common_tags,
        
        {
            Name = var.instance_names[count.index]
        }
    )
}

resource "aws_security_group" "allow_ssh_terraform" {
  name        = "allow_ssh"
  description = "Allow ssh inbound traffic and all outbound traffic"
  

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = merge (

        var.common_tags,
        
        {
            Name = "allow_sshh"
        }
    )
}