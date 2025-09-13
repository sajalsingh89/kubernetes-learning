kubectl run backen-pod --image=nginx
kubectl run frontend-pod  --image=ubuntu --command -- sleep 36000
kubectl exec -it frontend-pod --bash

#install curl utility

apt-get update && apt-get install curl -y


sudo hostnamectl set-hostname new-hostname
sudo scp kube-proxy.crt kube-proxy.key worker.crt worker.key ca.crt ubuntu@<Private-ip>:/tmp