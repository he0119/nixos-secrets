# NixOS Secrets

## 添加密钥

```shell
nix shell github:ryantm/agenix

cat ./new.key | sudo agenix  -e ./new.key.age -i /etc/ssh/ssh_host_ed25519_key
```

## 增加新的 HOST 时运行

```shell
sudo agenix -r -i /etc/ssh/ssh_host_ed25519_key
```
