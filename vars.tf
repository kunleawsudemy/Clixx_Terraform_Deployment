variable "AWS_ACCESS_KEY" {}

variable "AWS_SECRET_KEY" {}

variable "AWS_REGION" {
 default = "us-east-1"
}

variable "a_zone" {
  type = list(string)
    default = ["us-east-1a", "us-east-1b"]
}

variable "PATH_TO_PRIVATE_KEY" {
    default = "stackkp"
}

variable "PATH_TO_PUBLIC_KEY" {
    default = "stackkp.pub"
}

variable "vpc_id" {
    default = "vpc-0eb6e6c129b598626"
}

variable "subnet_ids" {
    type = list(string)
    default = [ "subnet-0fa014039cd8321e8",
    "subnet-00aaf4d49fb09fc5d"    
  ]  
}

variable "ami_id" {
  default = "ami-0022f774911c1d690"
}

variable "instance_type" {
  default = "t2.micro"
}