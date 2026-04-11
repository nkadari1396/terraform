variable "instances" {
    type = map
    default = {
        mysql = "t3.small"
        backend = "t3.micro"
        frontend = "t3.micro"
    }
}

variable "domain_name" {
    default = "naveenkadari.com"
}

variable "Zone_id" {
    default = "Z05521101U68XI4NW84J2"
}
    