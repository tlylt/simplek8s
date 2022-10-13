kubectl apply -f client-pod.yaml

kubectl apply -f client-node-port.yaml

# check status
kubectl get pods
kubectl get pods -o wide
kubectl get services
kubectl get deployments

# check detailed info
kubectl describe pod client-pod
kubectl describe service client-node-port

# clean up (imperative)
kubectl delete -f client-pod.yaml
kubectl delete -f client-node-port.yaml

# update image
kubectl set image deployment/client-deployment client=stephengrider/multi-client:v2