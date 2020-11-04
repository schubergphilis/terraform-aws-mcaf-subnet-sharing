variable "name" {
  type        = string
  description = "Used as part of the resource names to indicate they are created and used within a specific name"
}

variable "prepend_resource_type" {
  type        = bool
  default     = false
  description = "If set it will prepend the resource type on the resource created"
}

variable "private_subnet_arns" {
  type        = list(string)
  default     = []
  description = "A list of private subnet arns to share"
}

variable "public_subnet_arns" {
  type        = list(string)
  default     = []
  description = "A list of public subnet arns to share"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Tags to be set to a resource share for subnets"
}
