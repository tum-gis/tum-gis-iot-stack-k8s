{{/*
Expand the name of the chart.
*/}}
{{- define "frostweb.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "frostweb.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "frostweb.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "frostweb.labels" -}}
helm.sh/chart: {{ include "frostweb.chart" . }}
{{ include "frostweb.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "frostweb.selectorLabels" -}}
app.kubernetes.io/name: {{ include "frostweb.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "frostweb.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "frostweb.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
FROST Service URL
*/}}
{{- define "frostweb.http.serviceRootUrl" -}}
  https://
  {{- (first .Values.global.ingress.domains) | default (first .Values.ingress.domains) -}}/
  {{- .Values.ingress.subpath }}
{{- end }}

{{/*
FROST DB URL
*/}}
{{- define "frostweb.db.url" -}}
  jdbc:postgresql://
  {{- .Values.global.db.host | default .Values.persistence.db.host -}}:
  {{- .Values.global.db.port | default .Values.persistence.db.port -}}/
  {{- .Values.global.db.dbname | default .Values.persistence.db.dbname -}}
{{- end }}

{{/*
FROST Auth DB URL
*/}}
{{- define "frostweb.auth.db.url" -}}
  jdbc:postgresql://
  {{- .Values.global.db.host | default .Values.auth.db.host -}}:
  {{- .Values.global.db.port | default .Values.auth.db.port -}}/
  {{- .Values.global.db.dbname | default .Values.auth.db.dbname -}}
{{- end }}
