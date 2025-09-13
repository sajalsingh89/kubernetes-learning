gcloud compute disks create my-gce-disk --size=10GB --zone=us-central1-a
kubectl apply -f pv.yaml
kubectl delete -f pvc.yaml
kubectl delete -f pv.yaml
gcloud compute disks delete my-gce-disk --zone=us-central1-a
kubectl get storageclass
