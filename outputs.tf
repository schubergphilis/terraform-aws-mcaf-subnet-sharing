output "id" {
  value       = try(aws_ram_resource_share.subnet_sharing[0].id, null)
  description = "The ID of the subnet share in resource access manager"
}

output "arn" {
  value       = try(aws_ram_resource_share.subnet_sharing[0].arn, null)
  description = "The ARN of the subnet share in resource access manager"
}