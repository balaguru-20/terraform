variable "instances" {
  default = ["mysql", "backend", "frontend"]
}

variable "zone_id" {
  default = "Z07397833FYXWS2675ELE" #For this goto aws hosted zone copy Hosted zone ID
}

variable "domain_name" {
  default = "daws82s.space"
}

variable "common_tags" {
  type = map(any)
  default = {
    Project     = "expense"
    Environment = "dev"
  }
}