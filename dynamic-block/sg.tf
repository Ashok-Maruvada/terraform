resource "aws_security_group" "allow_ports" {
  name        = "allow_ports"
  description = "allow ports-22,80,8080,3306"

  #terraform dynamic block for allowing multiple blocks
  dynamic "ingress" {
    for_each = var.inbound_rules
    content {
      from_port = ingress.value["port"]
      to_port = ingress.value["port"]
      protocol = ingress.value["protocol"]
      cidr_blocks = ingress.value["allowed_cidr"]
    }
  }

  egress {
        from_port        = 0 # from 0 to 0 means, opening all protocols
        to_port          = 0
        protocol         = "-1" # -1 all protocols
        cidr_blocks      = ["0.0.0.0/0"]
  }

    tags = {
      Name = "allowing multiple ports"
      createdby = "Ashok"
    }
}