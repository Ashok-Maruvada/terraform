# preference of accessing variable value
# 1.command line as terraform plan -var="instance_type=t3.medium" 
# 2.<file-name>.tfvars
# 3.environment variable like > export TF_VAR_instance_type=t3.large
# 4.variable default value

variable "image_id" {
    type = string
    #default value must be clear and others are optional
    default = "ami-090252cbe067a9e58"
    description = "RHEL-9-DevOps-Practice"
}

variable "instance_type" {
    default = "t3.micro"
}

variable "tags" {
    default = {
        Name = "db"
        environment = "Dev"
        project = "expense"
    }
}

variable "sg_tags" {
    default = {
        Name = "allow_ssh"
        CreatedBy = "Ashok"
    }
}

variable "ssh_port" {
    default = 22
}

variable "protocol" {
    default = "tcp"
}

variable "allowed_cidr" {
    default = ["0.0.0.0/0"]
}