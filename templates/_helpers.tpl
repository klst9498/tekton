{{- define "namespace" -}}
{{- $name := default "tekton-pipeline" .Values.namespace }}
{{- end }}
