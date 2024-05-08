# resource <resource-type> <resource-name>
resource "aws_instance" "db" {

    ami = var.image_id
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    instance_type = var.instance_type
    tags = var.tags
}

resource "aws_security_group" "allow_ssh" {
    name = "allow_ssh"
    description = "allowing SSH access"
    # this is block , not map
    ingress {
        from_port        = var.ssh_port
        to_port          = var.ssh_port
        protocol         = var.protocol
        cidr_blocks      = var.allowed_cidr
    }

    egress {
        from_port        = 0 # from 0 to 0 means, opening all protocols
        to_port          = 0
        protocol         = "-1" # -1 all protocols
        cidr_blocks      = var.allowed_cidr
    }

    tags = var.sg_tags
}