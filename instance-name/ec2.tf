resource "aws_instance" "expense" {
    ami = "ami-090252cbe067a9e58"
    vpc_security_group_ids = ["sg-0f10b4b0d09399166"]
    instance_type = "t3.micro"
    #entire values in tags will come in tags section of instance
    tags = {  
      Name = "db" #this will give instance name
      environment = "dev"
      project = "expense"
      Module = "db"
    }
}