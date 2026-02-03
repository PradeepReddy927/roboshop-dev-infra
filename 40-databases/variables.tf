variable "project_name" {
    default = "roboshop"
}

variable "environment" {
    default = "dev"
}

variable "sg_names" {
    default = [
       # databases
        "mongodb", "redis" , "mysql", "rabbitmq",
       # backend
        "catalogue", "user" , "cart" , "shipping", "payment",
       # frontend
        "frontend",
       # bastion
        "bastion",
       # frontend load Balancer
        "frontend_lb",
       # Backend ALB
         "backend_alb" 
    ]   
}

variable "zone_id" {
    default = "Z0883062RHMIRSI7AY3N"
}

variable "domain_name" {
    default = "dawsdevops86.fun"
}