containerd config default | sudo tee /etc/containerd/config.toml

sudo mkdir -p /etc/containerd
containerd config default | sudo tee /etc/containerd/config.toml

# Or create a basic config manually
sudo tee /etc/containerd/config.toml <<EOF
version = 2
[plugins."io.containerd.grpc.v1.cri"]
  [plugins."io.containerd.grpc.v1.cri".containerd]
    [plugins."io.containerd.grpc.v1.cri".containerd.runtimes]
      [plugins."io.containerd.grpc.v1.cri".containerd.runtimes.runc]
        runtime_type = "io.containerd.runc.v2"
        [plugins."io.containerd.grpc.v1.cri".containerd.runtimes.runc.options]
          SystemdCgroup = true
EOF

# Update package list
sudo apt update

# Install containerd
sudo apt install containerd -y

# Start and enable containerd
sudo systemctl start containerd
sudo systemctl enable containerd
sudo hostnamectl set-hostname new-hostname
# Restart containerd after config changes
sudo systemctl restart containerd

# Check containerd status
sudo systemctl status containerd

# Verify containerd is working
sudo ctr version