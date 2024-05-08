variable "instance_name" {
    type = list
    default = ["db", "backend", "frontend"]
}

variable "common_tags" {
    default = {
        project = "expense"
        environment = "Dev"
    }
}