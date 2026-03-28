variable "instance_names {
    type = list(string)
    default = ["mysql", "backend", "frontend"]
    description = "Names of the instance created"
}

variable "common_tags" {
    type = map
    default = {
        Name = "terraform"
        Project = " Expense"
        Environment = "dev"
        Terraform = true
    }
}