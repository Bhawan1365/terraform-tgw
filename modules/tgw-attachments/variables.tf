variable "list_of_vpcs" {
    type = list(string)
    description = "List of VPCs"
}

variable "list_of_subnets" {
    type = list(list(string))
    description = "List of Subnets"
}

variable "transit_gateway_id" {
    type = string
}