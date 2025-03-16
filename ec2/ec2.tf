# resource <resource-type> <resource-name>
resource "aws_instance" "elk" {

    ami = "ami-09c813fb71547fc4f"
    #vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    vpc_security_group_ids = ["sg-0b79601d86b17db45"]
    instance_type = "t3.medium"
    tags = {
        Name = "elk"
    }
}

# resource "aws_security_group" "allow_ssh" {
#     name = "allow_ssh"
#     description = "allowing SSH access"

#     ingress {
#         from_port        = 22
#         to_port          = 22
#         protocol         = "tcp"
#         cidr_blocks      = ["0.0.0.0/0"]
#     }

#     egress {
#         from_port        = 0 # from 0 to 0 means, opening all protocols
#         to_port          = 0
#         protocol         = "-1" # -1 all protocols
#         cidr_blocks      = ["0.0.0.0/0"]
#     }

#     tags = {
#         Name = "allow_ssh"
#         CreatedBy = "Ashok"
#     }
# }