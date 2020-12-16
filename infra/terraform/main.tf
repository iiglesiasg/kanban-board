# Create a new server running ubuntu
resource "hcloud_server" "server" {
  name  = "paak-server"

  image       = "ubuntu-20.04"
  server_type = "cx21"
  location    = var.location # Region
  ssh_keys    = ["ningu@Master", "ningunpenk@hotmail.com"] #[hcloud_ssh_key.default.id]
  user_data   = file("./cloud_config/cloud_init_main.yaml")
}