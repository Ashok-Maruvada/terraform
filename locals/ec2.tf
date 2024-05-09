# using locals, we can define/declare variables and can also pass expressions
resource "aws_instance" "db" {
    #need to mention keyword as local while passing a variable but when declaring , need to mention as locals
    ami = local.image_id
    instance_type = local.instance_typo
    tags = local.tags
}
