resource "aws_route53_record" "expense" {
  count = length(var.instance_name)
  zone_id = var.zone_id
  #using interpolation to mix variable and text, refer terraform interpolation concept
  #u can also create variable for goadd.fun and declare here using interpolation otherwise it will not take
  name    = var.instance_name[count.index] == "frontend" ? "goadd.fun" : "${var.instance_name[count.index]}.goadd.fun"
  type    = "A"
  ttl     = 1
  records = var.instance_name[count.index] == "frontend" ? [aws_instance.expense[count.index].public_ip] : [aws_instance.expense[count.index].private_ip]
  #if records already exists, it will overwrite
  allow_overwrite = true
}