# This Helmchart tries to be an Helm chart for the Installation of Tekton


## What does this Helmchat contain
* [Tektorn Pipeline / CRDs](https://github.com/tektoncd/pipeline/releases/tag/v0.62.0)
* [Tekton Triggers](https://github.com/tektoncd/triggers/releases/tag/v0.28.0)
* [Tekton Dashboard](https://github.com/tektoncd/dashboard/releases/tag/v0.49.0)
* [interceptors] (https://github.com/tektoncd/triggers/releases/tag/v0.28.0)


## How to install the tekton chart

helm install tekton raptor/tekton --create-namespace -n <ns> --set global.namespace=<ns>

## How to uninstall the tekton chart

helm uninstall tekton -n <ns>

Please note the "namespaced crds are deleted automatically by helm uninstall. The global crds must be uninstalled manually

```
kubectl get crd | grep tekton.dev | awk '{print $1}' | xargs -I {} kubectl delete crd {}
```

