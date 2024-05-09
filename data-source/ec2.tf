resource "aws_instance" "db" {
  ami = data.aws_ami.ami_id.id
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0f10b4b0d09399166"]
  tags = {
    default = "data-source"
  }
}