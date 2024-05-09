
#instance variables
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
#R53 record variables
variable "zone_id" {
    default = "Z0886179189CALGJIR20N"
}