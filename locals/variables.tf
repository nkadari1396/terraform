variable "instance_names" {
    type = list(string)
    default = ["mysql", "backend", "frontend"]
}

variable "common_tags" {
    type = map
    default = {
        Project = "expense"
        environment = "prod"
        Terraform = "true"
    }
}

variable "environment" {
    type = string
    default = "prod"
}