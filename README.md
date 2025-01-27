# Devops related useful commands and scripts for everyday use

## kubernetes aliases

``` bash
alias k='kubectl'
alias kg='k get'
alias kcns='k config set-context --current --namespace'
```

## kubernates commands

##### pod name by label
```
POD=$(kubectl get pod -l key=value -ojsonpath='{.items[0].metadata.name}')
```

##### container names of a pod
```
kubectl get pod $POD -ojsonpath='{.spec.containers[*].name}'
```

