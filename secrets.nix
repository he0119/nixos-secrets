let
  # Get system's ssh public key by command:
  #    cat /etc/ssh/ssh_host_ed25519_key.pub
  # If you do not have this file, you can generate all the host keys by command:
  #    sudo ssh-keygen -A
  mini = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDUmKHI3210erAXq5h8oG7c3NOsXvxpnMNbElG3Hp/yx root@mini";
  spin5 = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINnksN9nCYFDVlvwfSW0U3yRSkwugxdlQSwyM9H1jV/+ root@spin5";

  work-305 = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBbVqEmQSBg+xt0bgsj+/mI7YzS26vJio8QVxfYodxQB root@work-305";

  miemie = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJzd9kDPZholuCKXVnOv8ouLryYL4P0L3ioClJTvTLtF root@miemie";

  recovery_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIRrymJExf8Z+IJ8nf9qvGWAbIAdD/nsR8OoDQ9dH3F8 hmy01@HMY-SPIN5";
  systems = [
    mini
    spin5
  
    work-305

    miemie

    recovery_key
  ];
in {
  "./cloudflared/miemie.json.age".publicKeys = systems;
  "./wakatime.cfg.age".publicKeys = systems;
}
