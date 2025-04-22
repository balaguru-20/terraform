resource "aws_instance" "this" {
  ami                    = local.ami_id
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  # instance_type          = "t3.micro" # it is can be overriden
  # instance_type          = var.instance_type # it is can be overriden
  instance_type = local.instance_type # it is can't overriden
  tags = {
    # expense-dev-backend
    #Name    = "terraform_demo"
    # Name    =  var.name  #throws an error can't work
    Name  = local.name
    purpose = "terraform_practice"
  }
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls_changed"
  description = "Allow TLS inbound and all outbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}