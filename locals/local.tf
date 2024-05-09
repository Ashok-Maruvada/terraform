#locals can hold expressions apart from variables
locals {
  instance_name = "db"
  image_id = "ami-090252cbe067a9e58"
  instance_typo = local.instance_name == "db" ? "t3.small" : "t3.micro"
  tags = {
    Name = "locals"
  }
}