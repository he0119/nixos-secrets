let
  # Get system's ssh public key by command:
  #    cat /etc/ssh/ssh_host_ed25519_key.pub
  # If you do not have this file, you can generate all the host keys by command:
  #    sudo ssh-keygen -A
  mini = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPNl3knUYyOT34FpWozYI+ekXr9tt/mk78ZvCOnYoCWa root@mini";
  spin5 = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINnksN9nCYFDVlvwfSW0U3yRSkwugxdlQSwyM9H1jV/+ root@spin5";

  work-305 = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAICyHS05r6Oh5pH8W6dMeFDMQtO7/UBf0bYy1Irb9NWiV root@work-305";

  miemie = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJzd9kDPZholuCKXVnOv8ouLryYL4P0L3ioClJTvTLtF root@miemie";

  recovery_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDv+XNrly09JDFlXTTgJ1YoWmvHQMrt+Cumpg4AOCDY7 hmy01@HMY-UM790PRO";
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
  "./gitea/runner-305.env.age".publicKeys = systems;
}
