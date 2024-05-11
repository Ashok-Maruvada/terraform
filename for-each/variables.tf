variable "instance_names" {
    type = map
    default = {
         db = "t3.small"
         backend = "t3.micro"
         frontend = "t3.micro"
    }
}

variable "common_tags" {
    type = map
    default = {
        environment = "dev"
        project = "expense"
    }
}

variable "zone_id" {
    default = "Z0886179189CALGJIR20N"
}

variable "domain_name" {
    default = "goadd.fun"
}