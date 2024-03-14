let
  # Get system's ssh public key by command:
  #    cat /etc/ssh/ssh_host_ed25519_key.pub
  # If you do not have this file, you can generate all the host keys by command:
  #    sudo ssh-keygen -A
  wsl = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDUmKHI3210erAXq5h8oG7c3NOsXvxpnMNbElG3Hp/yx root@wsl";
  systems = [ wsl ];
in
{
  "./cloudflared-miemie.json.age".publicKeys = systems;
}