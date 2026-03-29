locals {
    zone_id = "Z05521101U68XI4NW84J2"
    domain_name = "naveenkadari.com"
    instance_type = var.environment == "prod" ? "t3.micro" : "t3.small"
}