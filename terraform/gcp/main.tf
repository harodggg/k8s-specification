terraform { 
    required_providers {
        google = { 
            source = "hashicorp/google"
            version = "4.15.0"
        }
    }
}

module "instance" { 
    source = "./modules/instance"
    name = "node-n"

    nvme_num = 2 
    instance_num = 2
    disk_num = 0

    disk_size = 0
    disk_name = "disk"

    zone = "asia-east2-b"
}

module "instance1" { 
    source = "./modules/instance"
    name = "node-i" 

    nvme_num = 0 
    instance_num = 1
    disk_num = 2

    disk_size = 350
    disk_type = ""
    disk_name = "pd-disk"
    zone = "asia-east2-b"
}