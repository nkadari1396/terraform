variable "instance_names" {
    type = list(string)
    default = ["mysql", "backend", "frontend"]
}


variable "domain_name" {
    type = string
    default = "naveenkadari.com"
}