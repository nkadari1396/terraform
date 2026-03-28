variable "instance_name" {
    type = string
    default = ["mysql", "backend", "frontend"]
}

variable "common_tags" {
    type = map
    default = {
        Project = "expense"
        Environment = "Dev"
        Terraform = "true"
    }
}

variable "zone_id" {
    type = string
    default = 
}

variable "domain_name" {
    type = string
    default = "naveenkadari.com"
}