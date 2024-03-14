let
  # Get system's ssh public key by command:
  #    cat /etc/ssh/ssh_host_ed25519_key.pub
  # If you do not have this file, you can generate all the host keys by command:
  #    sudo ssh-keygen -A
  wsl = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDUmKHI3210erAXq5h8oG7c3NOsXvxpnMNbElG3Hp/yx root@wsl";
  miemie = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJzd9kDPZholuCKXVnOv8ouLryYL4P0L3ioClJTvTLtF root@miemie";

  recovery_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIRrymJExf8Z+IJ8nf9qvGWAbIAdD/nsR8OoDQ9dH3F8 hmy01@HMY-SPIN5";
  systems = [
    wsl
    miemie

    recovery_key
  ];
in {
  "./cloudflared-miemie.json.age".publicKeys = systems;
}
