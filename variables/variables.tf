variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "This is RHEL9 AMI ID"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "ec2_tags" {
  type = map(any)
  default = {
    Project     = "expense"
    Component   = "backend"
    Environment = "dev"
    Name        = "expense-backend-dev"
  }
}

variable "from_port" {
  type    = number
  default = 22
}

variable "to_port" {
  type    = number
  default = 22
}

variable "cidr_blocks" {
  type    = list(any)
  default = ["0.0.0.0/0"]
}

variable "sg_tags" {
  type = map(any)
  default = {
    Name = "expense-backend-dev"
  }
}

/* Preferences
1. command line
2. tfvars
3. env var
4. default values
5. user prompt */