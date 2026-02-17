variable "instances" {
    default = [ "mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend" ]
}

variable "zone_id" {
    default = "Z07640203A5BMTHGMGOZU"
}

variable "domain_name" {
    default = "devopsbhaskar.fun"
}