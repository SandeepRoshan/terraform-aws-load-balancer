in_lb_class         = "application"
in_front_end        = ["http", "https", "etcd"]
 # Example map with protocols
in_back_end         =  ["http", "https", "etcd"]  # These should match keys in the `protocols` map
  # List of back end targets
in_is_internal      = true
# in_vpc_id           = ""  # Provide the appropriate VPC ID
# in_security_group_ids = aws_security_group.default.id  # List of security group IDs
# in_subnet_ids       = [2]  # List of subnet IDs
in_ip_addresses     = ["10.0.0.1", "10.0.0.2"]  # List of IP addresses
in_ip_address_count = 2  # Count of IP addresses
in_ecosystem_name   = "hii"
in_tag_timestamp    = 17  # Provide the appropriate timestamp, e.g., 80911-1435
in_tag_description  = ""
