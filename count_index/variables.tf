variable "instance_names" {
    type = list(string)
    default = ["mysql, "backend", "frontend" ]
}

variable "common_tags" {
    type = map
    default = {
        Name = "terraform"
        Environment = "dev"
        Project = "Expense"
        Terraform = true
    }
}