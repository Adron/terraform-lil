// Google Compute Platform Variables
variable network_name {
  default     = "thenewnet"
  type        = "string"
  description = "Just the network name for the Google Compute Platform."
}

variable new_value {

}

variable newmap {
  type = "map"
}

variable gcp_ip_cidr_range {
  default = "10.0.0.0/16"
  type = "string"
  description = "IP CIDR Range for Google VPC."
}

variable aws_ip_cidr_range {
  default = "10.0.1.0/24"
  type = "string"
  description = "IP CIDR Range for AWS VPC."
}

variable subnet_names {
  type = "map"

  default = {
    subnet1 = "subnetone"
    subnet2 = "subnettwo"
    subnet3 = "subnetthree"
  }
}

// Output variables

output "first_output" {
  value = "this is the value through execution."
}

output "aws_cidr_subnet1" {
  value = "${aws_subnet.subnet1.cidr_block}"
}

