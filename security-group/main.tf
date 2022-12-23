resource "aws_instance" "ec2-instance" {
  ami = var.ami
  instance_type = var.instance_type
  security_groups = [aws_security_group.sg-group.id ]
  tags = var.tags
}

resource "aws_security_group" "sg-group" {
  name        = var.name
  vpc_id      = var.vpc_id
  dynamic "ingress" {
    for_each = var.ports
    iterator = port
    content {
    description = port.key
    from_port        = port.value
    to_port          = port.value
    protocol         = "tcp"
    cidr_blocks      = [var.cidr]
    }
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = var.tags
}
