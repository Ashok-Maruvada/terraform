resource "aws_instance" "expense" {
    for_each = var.instance_names
    ami = data.aws_ami.ami_info.id
    vpc_security_group_ids = ["sg-0f10b4b0d09399166"]
    instance_type = each.value

    tags = merge(
        var.common_tags,
        {
            Name = each.key
            module = each.key
        }
    )
}