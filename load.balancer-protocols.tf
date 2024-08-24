variable "protocols" {
    description = "Load balancer protocols for front and back end traffic."
    type        = map(list(string))

    default = {
        # Application load balancer interface
        http     = ["HTTP",   "80",   "http port 80"]
        https    = ["HTTPS",  "443",  "ssl on port 443"]
        etcd     = ["HTTP",   "2379", "etcd port 2379"]
        rabbitmq = ["HTTP",   "15672","rabbitmq port 15672"]
        rmq-ssl  = ["HTTPS",  "15671","rmq ssl port 15671"]

        # Network load balancer interface
        amqp     = ["TCP",    "5672", "amqp port 5672"]
        ssh      = ["TCP",    "22",   "ssh port 22"]
    }
}

variable "in_front_end" {
    description = "The front end listener configuration for this load balancer."
    type        = list(string)  # Assuming this should be a list of protocol keys
}