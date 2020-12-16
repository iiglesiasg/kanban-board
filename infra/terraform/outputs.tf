output "server_ipv4" {
  description = "Server ipv4"
  value       = [hcloud_server.server.ipv4_address]
}