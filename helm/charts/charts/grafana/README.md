# grafana

![Version: 0.6.0](https://img.shields.io/badge/Version-0.6.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 9.3.2](https://img.shields.io/badge/AppVersion-9.3.2-informational?style=flat-square)

Grafana instance

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
| http.enableGzip | bool | `true` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"grafana/grafana-oss"` | Image repository |
| image.tag | string | `""` | Overrides the image tag whose default is the chart appVersion. |
| imagePullSecrets | list | `[]` | [Image pull secrets](https://kubernetes.io/docs/tasks/configure-pod-container/pull-image-private-registry/) |
| ingress | object | `{"annotations":null,"certManager":{"issuerEmail":"me@example.com","issuerName":"letsencrypt-staging","issuerType":"namespace"},"className":"nginx","domains":[],"enabled":true,"subpath":"grafana"}` | Ingress configuration |
| ingress.annotations | string | `nil` | Additional Ingress annotations |
| ingress.certManager.issuerEmail | string | `"me@example.com"` | eMail address for ACME registration with Let's Encrypt. Only used for issuerType = namespace. |
| ingress.certManager.issuerName | string | `"letsencrypt-staging"` | Name of the Issuer to use. For certManager.type = namespace `letsencrypt-staging`, `letsencrypt-prod` and `self-signed` are available. |
| ingress.certManager.issuerType | string | `"namespace"` | Type of [cert-manager](https://cert-manager.io/docs/) Issuer: Use either "namespace" or "cluster". |
| ingress.className | string | `"nginx"` | Name of the [IngressClass](https://kubernetes.io/docs/concepts/services-networking/ingress/#ingress-class) to use in Ingress routes. |
| ingress.domains | list | `[]` | List of [FQDNs](https://de.wikipedia.org/wiki/Fully-Qualified_Host_Name) for this Ingress. Note: All FQDNs will be used for Ingress hosts and TLS certificate. The global setting overwrites this setting. Note: The first domain in the list will be used as FROST-Server serviceRootURL and MQTT host. |
| ingress.enabled | bool | `true` | Enable/disable ingress |
| ingress.subpath | string | `"grafana"` | Make Grafana available at a subpath. By default Grafana will be available from [DOMAIN]/ Don't append or prepend :// or / |
| install.plugins | string | `"grafana-clock-panel,grafana-simple-json-datasource, grafana-worldmap-panel,marcusolsson-json-datasource, snuids-trafficlights-panel,citilogics-geoloop-panel, iosb-sensorthings-datasource,yesoreyeram-boomtheme-panel, snuids-svg-panel, https://github.com/briangann/grafana-gauge-panel/releases/download/v0.0.9/briangann-gauge-panel-0.0.9.zip;briangann-gauge-panel"` | Grafana plugins to install |
| livenessProbe | object | `{"enabled":true,"failureThreshold":5,"initialDelaySeconds":10,"periodSeconds":5,"probe":{"exec":{"command":["bash","-c","wget -S \"http://127.0.0.1:3000/api/health\" |& grep \"200 OK\""]}},"successThreshold":1,"terminationGracePeriodSeconds":null,"timeoutSeconds":1}` | [Liveness probe](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#container-probes) See the [API reference](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#Probe) for details. |
| livenessProbe.enabled | bool | `true` | Enable/disable liveness probe |
| livenessProbe.probe | object | `{"exec":{"command":["bash","-c","wget -S \"http://127.0.0.1:3000/api/health\" |& grep \"200 OK\""]}}` | Configure [startup probe](https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/) |
| nameOverride | string | `nil` | Override name |
| nodeSelector | object | `{}` |  |
| persistence.data.accessModes | list | `["ReadWriteOnce"]` | Storage [access modes](https://kubernetes.io/docs/concepts/storage/persistent-volumes/#access-modes) |
| persistence.data.capacity | string | `"2Gi"` | Storage [capacity](https://kubernetes.io/docs/concepts/storage/persistent-volumes/#capacity) |
| persistence.data.mountPath | string | `"/var/lib/grafana"` | Mount path of the storage |
| persistence.storageClassName | string | `nil` | StorageClass to use, leave empty to use default StorageClass. |
| podAnnotations | object | `{}` | Additional pod annotations |
| podSecurityContext.fsGroup | int | `0` |  |
| podSecurityContext.runAsUser | int | `472` | Run as Grafana user |
| readinessProbe | object | `{"enabled":true,"failureThreshold":5,"initialDelaySeconds":10,"periodSeconds":5,"probe":{"exec":{"command":["bash","-c","wget -S \"http://127.0.0.1:3000/api/health\" |& grep \"200 OK\""]}},"successThreshold":1,"terminationGracePeriodSeconds":null,"timeoutSeconds":1}` | [Readiness probe](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#container-probes) See the [API reference](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#Probe) for details. |
| readinessProbe.enabled | bool | `true` | Enable/disable readiness probe |
| readinessProbe.probe | object | `{"exec":{"command":["bash","-c","wget -S \"http://127.0.0.1:3000/api/health\" |& grep \"200 OK\""]}}` | Configure [startup probe](https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/) |
| replicaCount | int | `1` | Number of replicas. Only used if autoscaling.enabled = false |
| resources.limits.cpu | string | `"1000m"` |  |
| resources.limits.memory | string | `"1Gi"` |  |
| resources.requests.cpu | string | `"250m"` |  |
| resources.requests.memory | string | `"256Mi"` |  |
| security | object | `{"adminPassword":"changeMe","adminUsername":"admin","allowEmbedding":true}` | Grafana security settings |
| securityContext | object | `{}` |  |
| service.port | int | `3000` | Service port for http |
| service.type | string | `"ClusterIP"` | Type of service for http |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.create | bool | `false` | Specifies whether a service account should be created |
| serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template |
| startupProbe | object | `{"enabled":true,"failureThreshold":20,"initialDelaySeconds":10,"periodSeconds":5,"probe":{"exec":{"command":["bash","-c","wget -S \"http://127.0.0.1:3000/api/health\" |& grep \"200 OK\""]}},"successThreshold":1,"terminationGracePeriodSeconds":null,"timeoutSeconds":1}` | [Startup probe](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#container-probes) See the [API reference](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#Probe) for details. |
| startupProbe.enabled | bool | `true` | Enable/disable startup probe |
| startupProbe.probe | object | `{"exec":{"command":["bash","-c","wget -S \"http://127.0.0.1:3000/api/health\" |& grep \"200 OK\""]}}` | Configure [startup probe](https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/) |
| tolerations | list | `[]` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
