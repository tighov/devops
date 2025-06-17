#!/bin/bash

#!/bin/bash

action=$1

export KUBECONFIG=$HOME/.kube/configs/bootech-stage.yaml

case $action in
  port-forward) kubectl port-forward svc/argocd-server -n argocd 8080:443;;
  password) kubectl get secret argocd-initial-admin-secret -n argocd -o jsonpath="{.data.password}" | base64 -d && echo ;; 
  server) kubectl get svc -n argocd argocd-server ;;
  *) echo "$0 [port-forward|password|server]";;
esac
