# if old pv/pvcs are not terminating
kubectl patch pvc shared-data -p '{"metadata":{"finalizers": []}}' --type=merge
helm upgrade --install base ./base
