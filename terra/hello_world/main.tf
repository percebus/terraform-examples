terraform {
  required_version = ">= 0.12.0"
}

output "message" {
  value = var.output_message
}
