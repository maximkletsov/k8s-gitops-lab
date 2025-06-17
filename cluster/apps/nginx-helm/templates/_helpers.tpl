{{- define "nginx-helm.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "nginx-helm.name" -}}
{{- .Chart.Name -}}
{{- end }}

{{- define "nginx-helm.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version -}}
{{- end }}

