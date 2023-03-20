output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "public_ip_address" {
  value = azurerm_linux_virtual_machine.my_terraform_vm.public_ip_address
}

output "tls_private_key" {
  value     = tls_private_key.example_ssh.private_key_pem
  sensitive = true
}

# print public and private key
output "public_key" {
  value = tls_private_key.example_ssh.public_key_openssh
}

# print private key and make sure it shows in the terminal
output "private_key" {
  value     = tls_private_key.example_ssh.private_key_pem
  sensitive = true

}
