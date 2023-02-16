# grafana

![Version: 0.6.3](https://img.shields.io/badge/Version-0.6.3-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 9.3.6](https://img.shields.io/badge/AppVersion-9.3.6-informational?style=flat-square)

Bash chart for Grafana.

**Homepage:** <https://github.com/tum-gis/tum-gis-iot-stack-k8s>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Bruno Willenborg | <b.willenborg@tum.de> | <https://www.asg.ed.tum.de/en/gis/our-team/staff/bruno-willenborg/> |

## Source Code

* <https://github.com/tum-gis/tum-gis-iot-stack-k8s/tree/main/helm/charts/charts/grafana>
* <https://github.com/grafana/grafana>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| autoscaling.enabled | bool | `false` | Enable/disable pod autoscaling, if disabled `replicaCount` is used to set number of pods. Note: If autoscaling is enabled, a database (`database.enable: true`) should be used as Grafana backend. |
| autoscaling.maxReplicas | int | `5` | Maximum number of replicas |
| autoscaling.minReplicas | int | `1` | Minimum number of replicas |
| autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| component | string | `"frontend"` |  |
| database.auth.password | string | `"changeMe"` |  |
| database.auth.username | string | `"postgres"` |  |
| database.dbname | string | `"grafana"` |  |
| database.enabled | bool | `false` | Enable/disable [Grafana database](https://grafana.com/docs/grafana/latest/setup-grafana/configure-grafana/#database). If database is enabled, the persistence settings are disabled, as no SQLite DB is needed. |
| database.host | string | `"frostdb"` |  |
| database.port | int | `5432` |  |
| database.sslmode | string | `"disable"` |  |
| database.type | string | `"postgres"` |  |
| dateFormats.fullDate | string | `"dd, DD.MM.YYYY HH:mm:ss"` |  |
| dateFormats.interval.day | string | `"dd, DD.MM"` |  |
| dateFormats.interval.hour | string | `"dd, DD.MM HH:mm"` |  |
| dateFormats.interval.minute | string | `"dd, HH:mm"` |  |
| dateFormats.interval.month | string | `"YYYY.MM"` |  |
| enabled | bool | `true` |  |
| extraEnv | object | `{}` | Extra environment variables |
| fullnameOverride | string | `"grafana"` | Override fullname |
| http.enableGzip | bool | `true` | Enable/disable Grafana GZIP encoding |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"grafana/grafana-oss"` | Image repository |
| image.tag | string | `""` | Overrides the image tag whose default is the chart appVersion. |
| imagePullSecrets | list | `[]` | [Image pull secrets](https://kubernetes.io/docs/tasks/configure-pod-container/pull-image-private-registry/) |
| ingress.annotations | string | `nil` | Additional Ingress annotations |
| ingress.certManager.issuerEmail | string | `"me@example.com"` | eMail address for ACME registration with Let's Encrypt. Only used for issuerType = namespace. |
| ingress.certManager.issuerName | string | `"letsencrypt-staging"` | Name of the Issuer to use. For certManager.type = namespace `letsencrypt-staging`, `letsencrypt-prod` and `self-signed` are available. |
| ingress.certManager.issuerType | string | `"namespace"` | Type of [cert-manager](https://cert-manager.io/docs/) Issuer: Use either "namespace" or "cluster". |
| ingress.className | string | `"nginx"` | Name of the [IngressClass](https://kubernetes.io/docs/concepts/services-networking/ingress/#ingress-class) to use in Ingress routes. |
| ingress.domains | list | `[]` | List of [FQDNs](https://de.wikipedia.org/wiki/Fully-Qualified_Host_Name) for this Ingress. Note: All FQDNs will be used for Ingress hosts and TLS certificate. The global setting overwrites this setting. Note: The first domain in the list will be used as FROST-Server serviceRootURL and MQTT host. |
| ingress.enabled | bool | `true` | Enable/disable ingress |
| ingress.subpath | string | `"grafana"` | Make Grafana available at a subpath. By default Grafana will be available from [DOMAIN]/ Don't append or prepend :// or / |
| install.plugins | string | `"grafana-clock-panel,grafana-simple-json-datasource, grafana-worldmap-panel,marcusolsson-json-datasource, snuids-trafficlights-panel,citilogics-geoloop-panel, iosb-sensorthings-datasource,yesoreyeram-boomtheme-panel, snuids-svg-panel, https://github.com/briangann/grafana-gauge-panel/releases/download/v0.0.9/briangann-gauge-panel-0.0.9.zip;briangann-gauge-panel"` | Grafana plugins to install |
| livenessProbe.enabled | bool | `true` | Enable/disable liveness probe [Liveness probe](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#container-probes) See the [API reference](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#Probe) for details. Use `livenessProbe.probe: {}` to configure [livenessProbe probe](https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/) |
| livenessProbe.failureThreshold | int | `5` |  |
| livenessProbe.initialDelaySeconds | int | `10` |  |
| livenessProbe.periodSeconds | int | `5` |  |
| livenessProbe.probe.exec.command[0] | string | `"bash"` |  |
| livenessProbe.probe.exec.command[1] | string | `"-c"` |  |
| livenessProbe.probe.exec.command[2] | string | `"wget -S \"http://127.0.0.1:3000/api/health\" |& grep \"200 OK\""` |  |
| livenessProbe.successThreshold | int | `1` |  |
| livenessProbe.terminationGracePeriodSeconds | string | `nil` |  |
| livenessProbe.timeoutSeconds | int | `1` |  |
| nameOverride | string | `nil` | Override name |
| nodeSelector | object | `{}` |  |
| persistence.data.accessModes | list | `["ReadWriteOnce"]` | Storage [access modes](https://kubernetes.io/docs/concepts/storage/persistent-volumes/#access-modes) |
| persistence.data.capacity | string | `"2Gi"` | Storage [capacity](https://kubernetes.io/docs/concepts/storage/persistent-volumes/#capacity) |
| persistence.data.mountPath | string | `"/var/lib/grafana"` | Mount path of the storage |
| persistence.storageClassName | string | `nil` | StorageClass to use, leave empty to use default StorageClass. |
| podAnnotations | object | `{}` | Additional pod annotations |
| podSecurityContext.fsGroup | int | `0` |  |
| podSecurityContext.runAsUser | int | `472` | Run as Grafana user |
| readinessProbe.enabled | bool | `true` | Enable/disable readiness probe [Readiness probe](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#container-probes) See the [API reference](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#Probe) for details. Use `readinessProbe.probe: {}` to configure [readinessProbe probe](https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/) |
| readinessProbe.failureThreshold | int | `5` |  |
| readinessProbe.initialDelaySeconds | int | `10` |  |
| readinessProbe.periodSeconds | int | `5` |  |
| readinessProbe.probe.exec.command[0] | string | `"bash"` |  |
| readinessProbe.probe.exec.command[1] | string | `"-c"` |  |
| readinessProbe.probe.exec.command[2] | string | `"wget -S \"http://127.0.0.1:3000/api/health\" |& grep \"200 OK\""` |  |
| readinessProbe.successThreshold | int | `1` |  |
| readinessProbe.terminationGracePeriodSeconds | string | `nil` |  |
| readinessProbe.timeoutSeconds | int | `1` |  |
| replicaCount | int | `1` | Number of replicas. Only used if autoscaling.enabled = false |
| resources.limits.cpu | string | `"1000m"` |  |
| resources.limits.memory | string | `"1Gi"` |  |
| resources.requests.cpu | string | `"250m"` |  |
| resources.requests.memory | string | `"256Mi"` |  |
| security.adminPassword | string | `"changeMe"` | Grafana admin password |
| security.adminUsername | string | `"admin"` | Grafana admin username |
| security.allowEmbedding | bool | `false` | Allow/disallow embedding of Grafana panels |
| securityContext | object | `{}` |  |
| service.port | int | `3000` | Service port for http |
| service.type | string | `"ClusterIP"` | Type of service for http |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.create | bool | `false` | Specifies whether a service account should be created |
| serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template |
| smtp.enabled | bool | `false` | Enable/disable SMTP server, see [Grafana SMTP](https://grafana.com/docs/grafana/latest/setup-grafana/configure-grafana/#smtp) for more. |
| smtp.host | string | `"my.smtp.com:465"` | SMTP Host with port, see [Grafana SMTP](https://grafana.com/docs/grafana/latest/setup-grafana/configure-grafana/#smtp) for more. |
| smtp.mailFrom | string | `"mailFrom@example.com"` | SMTP from email address, see [Grafana SMTP](https://grafana.com/docs/grafana/latest/setup-grafana/configure-grafana/#smtp) for more. |
| smtp.nameFrom | string | `"myGrafana instance"` | Sender Name, see [Grafana SMTP](https://grafana.com/docs/grafana/latest/setup-grafana/configure-grafana/#smtp) for more. |
| smtp.password | string | `"changeMe"` | SMTP password, see [Grafana SMTP](https://grafana.com/docs/grafana/latest/setup-grafana/configure-grafana/#smtp) for more. |
| smtp.user | string | `"username"` | SMTP username, see [Grafana SMTP](https://grafana.com/docs/grafana/latest/setup-grafana/configure-grafana/#smtp) for more. |
| startupProbe.enabled | bool | `true` | Enable/disable startup probe [Startup probe](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#container-probes) See the [API reference](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#Probe) for details. Use `startup.probe: {}` to configure [startupProbe probe](https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/) |
| startupProbe.failureThreshold | int | `20` |  |
| startupProbe.initialDelaySeconds | int | `10` |  |
| startupProbe.periodSeconds | int | `5` |  |
| startupProbe.probe.exec.command[0] | string | `"bash"` |  |
| startupProbe.probe.exec.command[1] | string | `"-c"` |  |
| startupProbe.probe.exec.command[2] | string | `"wget -S \"http://127.0.0.1:3000/api/health\" |& grep \"200 OK\""` |  |
| startupProbe.successThreshold | int | `1` |  |
| startupProbe.terminationGracePeriodSeconds | string | `nil` |  |
| startupProbe.timeoutSeconds | int | `1` |  |
| tolerations | list | `[]` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
