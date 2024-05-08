variable "image_id" {
    type = string
    #default value must be clear and others are optional
    default = "ami-090252cbe067a9e58"
    description = "RHEL-9-DevOps-Practice"
}

variable "instance_name" {
    default = "db"
}