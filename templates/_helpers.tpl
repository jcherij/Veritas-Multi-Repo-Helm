{{- define "veritas.name" -}}veritas{{- end }}

{{- define "veritas.ingestor.fullname" -}}veritas-ingestor{{- end }}
{{- define "veritas.reporter.fullname" -}}veritas-reporter{{- end }}

{{- define "veritas.labels" -}}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}

{{- define "veritas.ingestor.selectorLabels" -}}
app.kubernetes.io/name: veritas-ingestor
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/component: ingestor
{{- end }}

{{- define "veritas.reporter.selectorLabels" -}}
app.kubernetes.io/name: veritas-reporter
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/component: reporter
{{- end }}
