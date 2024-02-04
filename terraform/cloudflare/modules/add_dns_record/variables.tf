variable "key" { 
    type = string
    default = "./cf_key.txt"
}

variable "domain" { 
    type = string
    default = "blocknode.run"
}

variable "domain_ip" { 
    type = string
    default = "1.1.1.1"
}

variable "domain_name" { 
    type = string
    default = "test"
}

variable "domain_proxy" { 
    type = bool
    default = false
}

variable "domain_type" {
    type = string 
    default = "A"
}