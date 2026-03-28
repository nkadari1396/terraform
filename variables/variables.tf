variables "ami_id" {
    default = "ami-0220d79f3f480ecf5"
    type = string
    description = " ami_id of devops-practice"
}


variables "instance_type" {
    default = "instance_type"
    type = string
    description = " instance type of devops-practice"
}

variables "allow_sshh" {
    default = "allow_sshh"
    type = string
    description = " allow port number 22"
}

variables "tags" {
    type = map
    default = {
        Name = "terraform"
        Project = "Expense"
        Environment = "Dev"
        Terraform = "true"
    }

}


variables "from_port" {
    default = 22
    type = number
    description = " from port"
}

variables "to_port" {
    default = 22
    type = number
    description = " to port"
}

variables "protocol" {
    default = tcp
    type = string
    description = " tcp protocol"
}

variables "cidr_blocks" {
    default = ["0.0.0.0/0"]
    type = list(string)
    description = " from port"
}

variables "sg_description" {
    default = "Allow port number 22 for ssh access"
    type = string
    description = " allow port number 22"
}