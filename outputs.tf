output "id" {
  value       = aws_ram_resource_share.subnet_sharing.id
  description = "The ID of the subnet share in resource access manager"
}

output "arn" {
  value       = aws_ram_resource_share.subnet_sharing.arn
  description = "The ARN of the subnet share in resource access manager"
}
