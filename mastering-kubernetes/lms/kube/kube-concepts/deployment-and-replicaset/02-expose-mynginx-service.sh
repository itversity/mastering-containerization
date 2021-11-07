kubectl get pods
kubectl get pods -o wide

kubectl expose pod mynginx \
  --port 80 \
  --target-port 80 \
  --type=LoadBalancer

kubectl get svc --show-labels # Pick external ip

kubectl delete svc mynginx

kubectl expose pod mynginx \
  --port 8080 \
  --target-port 80 \
  --type=LoadBalancer