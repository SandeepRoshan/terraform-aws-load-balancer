
################ ################################################ ########
################ Module [[[load balancers]]] Input Variables List ########
################ ################################################ ########

### ######################## ###
### [[variable]] in_lb_class ###
### ######################## ###
variable "in_lb_class" {
    description = "Either 'application' for a layer 7 load balancer or 'network' for a layer 4 load balancer."
    type        = string

}



### ######################### ###
### [[variable]] in_front_end ###
### ######################### ###

# variable in_front_end {


#     description = "The front end listener configuration for this load balancer."
#     type        = list(string)
 
# }


### ######################## ###
### [[variable]] in_back_end ###
### ######################## ###

variable in_back_end {

    description = "The back end target configuration for this load balancer."
    type        = list(string)

}


### ########################### ###
### [[variable]] in_is_internal ###
### ########################### ###

variable in_is_internal {

    description = "If true the load balancer can be accessed externally and has a public IP address."
    type = bool

}


### ###################### ###
### [[variable]] in_vpc_id ###
### ###################### ###

# variable in_vpc_id {
#     description = "vpc id"
# }


### ################################## ###
### [[variable]] in_security_group_ids ###
### ################################## ###

# variable "in_security_group_ids" {

#     description = "ID of security group that constrains the flow of load balancer traffic."
#     type        = set(string)

# }


### ########################## ###
### [[variable]] in_subnet_ids ###
### ########################## ###
 
# variable "in_subnet_ids" {

#     description = "IDs of subnets the network interfaces are attached to."
#     type = set(string)
# }


### ############################ ###
### [[variable]] in_ip_addresses ###
### ############################ ###

variable in_ip_addresses {

    description = "The list of IP addresses (public or private) that the load balancer will round robin spray."
    type    = list(string)

}
### ################################ ###
### [[variable]] in_ip_address_count ###
### ################################ ###

variable in_ip_address_count {

    description = "Due to a Terraform quirk the count value must be known beforehand (at compile time so to speak)."
    type = number
}


### ################# ###
### in_ecosystem_name ###
### ################# ###

variable in_ecosystem_name {

    description = "Creational stamp binding all infrastructure components created on behalf of this ecosystem instance."
    type = string
}


### ################ ###
### in_tag_timestamp ###
### ################ ###

variable in_tag_timestamp {

    description = "A timestamp for resource tags in the format ymmdd-hhmm like 80911-1435"
    type = number
}


### ################## ###
### in_tag_description ###
### ################## ###

variable in_tag_description {

    description = "Ubiquitous note detailing who, when, where and why for every infrastructure component."
    type = string
}

