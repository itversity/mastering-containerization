kubectl get pod,svc -l app=mynginx

kubectl delete pod mynginx

kubectl get pod,svc -l app=mynginx

kubectl run mynginx --image=nginx

kubectl get pod,svc -l app=mynginx

kubectl label pod mynginx app=mynginx
kubectl get pod,svc -l app=mynginx

# Access the application