# This chart Contains all CRD's needed for an fresh Tekton install on an empty Cluster

## Update Chart

for tekton pipelines:
see https://github.com/tektoncd/pipeline/blob/main/docs/install.md
for tekton triggers 
see https://github.com/tektoncd/triggers/blob/main/docs/install.md

### example update Tekton Pipeline to latest
``` bash
curl https://storage.googleapis.com/tekton-releases/pipeline/latest/release.yaml
yq --yaml-output  '. | select(.kind == "CustomResourceDefinition")' < release.yaml > pipeline-crd.yaml
```

in the generated ```pipeline-crd.yaml``` replace all ```namespace: {{ .Values.global.namespace }}``` with ```namespace: {{ .Values.global.namespace }}```

### example update Tekton triggers to latest
``` bash
curl https://storage.googleapis.com/tekton-releases/triggers/latest/release.yaml
yq --yaml-output  '. | select(.kind == "CustomResourceDefinition")' < release.yaml > triggers-crd.yaml
```

Please  update also the Chart Version!



