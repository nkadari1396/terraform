variable "ami_id" {
    default = "ami-0220d79f3f480ecf5"
    type = string
    description = " ami_id of devops-practice"
}


variable "instance_type" {
    default = "instance_type"
    type = string
    description = " instance type of devops-practice"
}

variable "allow_sshh" {
    default = "allow_sshh"
    type = string
    description = " allow port number 22"
}

variable "tags" {
    type = map
    default = {
        Name = "terraform"
        Project = "Expense"
        Environment = "Dev"
        Terraform = "true"
    }

}


variable "from_port" {
    default = 22
    type = number
    description = " from port"
}

variable "to_port" {
    default = 22
    type = number
    description = " to port"
}

variable "protocol" {
    default = "tcp"
    type = string
    description = " tcp protocol"
}

variable "cidr_blocks" {
    default = ["0.0.0.0/0"]
    type = list(string)
    description = " from port"
}

variable "sg_description" {
    default = "Allow port number 22 for ssh access"
    type = string
    description = " allow port number 22"
}