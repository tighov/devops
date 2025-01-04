# Kubernates Commands

##### pod name by label
```
POD=$(kubectl get pod -l key=value -ojsonpath='{.items[0].metadata.name}')
```

##### container names of a pod
```
kubectl get pod $POD -ojsonpath='{.spec.containers[*].name}'
```

