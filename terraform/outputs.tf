output "control_node_public_ip" {
  description = "Public IP of the Control Node"

  value = aws_instance.control_node.public_ip
}

output "managed_node_public_ip" {
  description = "Public IP of the Managed Node"

  value = aws_instance.managed_node.public_ip
}

output "control_node_public_dns" {
  description = "Public DNS of the Control Node"

  value = aws_instance.control_node.public_dns
}

output "managed_node_public_dns" {
  description = "Public DNS of the Managed Node"

  value = aws_instance.managed_node.public_dns
}