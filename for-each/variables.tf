variable "instances" {
  type = map(any)
  default = {
    mysql    = "t3.small"
    backend  = "t3.micro"
    frontend = "t3.micro"
  }
}

variable "domain_name" {
  default = "daws82s.space"
}

variable "zone_id" {
  default = "Z07397833FYXWS2675ELE" #For this goto aws hosted zone copy Hosted zone ID
}