variable "instance_names" {
    type = list(string)
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
    default = "Z05521101U68XI4NW84J2"
}

variable "domain_name" {
    type = string
    default = "naveenkadari.com"
}