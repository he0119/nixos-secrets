# 增加新的密钥
# cat ./cloudflared-miemie.json | sudo agenix  -e ./cloudflared-miemie.json.age -i /etc/ssh/ssh_host_ed25519_key
# 增加新的 HOST 时运行
sudo agenix -r -i /etc/ssh/ssh_host_ed25519_key
