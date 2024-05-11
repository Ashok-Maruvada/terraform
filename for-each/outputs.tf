#it will show us the exact output of infra created from ec2 file
output "aws_instances_info" {
    value = aws_instance.expense
}