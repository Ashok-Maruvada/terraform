resource "aws_instance" "db" {
    ami = "ami-09c813fb71547fc4f"
    vpc_security_group_ids = ["sg-0b79601d86b17db45"]
    instance_type = "t3.micro"
    tags = {
      Name = "node"
    }
}