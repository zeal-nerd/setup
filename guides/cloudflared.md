### Cloudflare Tunnel  
**Package Name:**  
>cloudflared  

**Installation:**
```shell
# Download the official repository for cloudflare
$ curl -fsSL https://pkg.cloudflare.com/cloudflared-ascii.repo | sudo tee /etc/yum.repos.d/cloudflared.repo 

# Update the repository
$ yum update

# Install cloudflared
$ sudo yum install cloudflared

# Install and start cloudflared system service
$ sudo cloudflared service install <TUNNEL-TOKEN>

# Uninstall cloudflared service
$ sudo cloudflared service uninstall
```