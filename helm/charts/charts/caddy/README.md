# caddy

![Version: 0.3.0](https://img.shields.io/badge/Version-0.3.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 2.6.2-alpine](https://img.shields.io/badge/AppVersion-2.6.2--alpine-informational?style=flat-square)

Caddy webserver

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| autoscaling.enabled | bool | `false` | Enable/disable pod autoscaling, if disabled `replicaCount` is used to set number of pods. |
| autoscaling.maxReplicas | int | `5` | Maximum number of replicas |
| autoscaling.minReplicas | int | `1` | Minimum number of replicas |
| autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| caddyfile | string | `":80 {\n  root * /usr/share/caddy\n  file_server\n}"` | [Caddyfile](https://caddyserver.com/docs/caddyfile) to configure caddy |
| component | string | `"frontend"` |  |
| enabled | bool | `true` |  |
| fullnameOverride | string | `"caddy"` | Override fullname |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"caddy"` | Image repository |
| image.tag | string | `""` | Overrides the image tag whose default is the chart appVersion. |
| imagePullSecrets | list | `[]` | [Image pull secrets](https://kubernetes.io/docs/tasks/configure-pod-container/pull-image-private-registry/) |
| ingress | object | `{"annotations":null,"certManager":{"issuerEmail":"me@example.com","issuerName":"letsencrypt-staging","issuerType":"namespace"},"className":"nginx","domains":[],"enabled":true,"subpath":null}` | Ingress configuration |
| ingress.annotations | string | `nil` | Additional Ingress annotations |
| ingress.certManager.issuerEmail | string | `"me@example.com"` | eMail address for ACME registration with Let's Encrypt. Only used for issuerType = namespace. |
| ingress.certManager.issuerName | string | `"letsencrypt-staging"` | Name of the Issuer to use. For certManager.type = namespace `letsencrypt-staging`, `letsencrypt-prod` and `self-signed` are available. |
| ingress.certManager.issuerType | string | `"namespace"` | Type of [cert-manager](https://cert-manager.io/docs/) Issuer: Use either "namespace" or "cluster". |
| ingress.className | string | `"nginx"` | Name of the [IngressClass](https://kubernetes.io/docs/concepts/services-networking/ingress/#ingress-class) to use in Ingress routes. |
| ingress.domains | list | `[]` | List of [FQDNs](https://de.wikipedia.org/wiki/Fully-Qualified_Host_Name) for this Ingress. Note: All FQDNs will be used for Ingress hosts and TLS certificate. |
| ingress.enabled | bool | `true` | Enable/disable ingress |
| ingress.subpath | string | `nil` | Make Caddy available at a subpath. By default Caddy will be available from [DOMAIN]/ Don't append or prepend :// or / |
| livenessProbe | object | `{"enabled":false,"failureThreshold":5,"initialDelaySeconds":10,"periodSeconds":5,"probe":{"httpGet":{"path":"/","port":"http","scheme":"HTTP"}},"successThreshold":1,"terminationGracePeriodSeconds":null,"timeoutSeconds":1}` | [Liveness probe](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#container-probes) See the [API reference](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#Probe) for details. |
| livenessProbe.enabled | bool | `false` | Enable/disable liveness probe |
| livenessProbe.probe | object | `{"httpGet":{"path":"/","port":"http","scheme":"HTTP"}}` | Configure [startup probe](https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/) |
| nameOverride | string | `nil` | Override name |
| nodeSelector | object | `{}` |  |
| persistence.data.accessModes | list | `["ReadOnlyMany"]` | Storage [access modes](https://kubernetes.io/docs/concepts/storage/persistent-volumes/#access-modes) |
| persistence.data.capacity | string | `"4Gi"` | Storage [capacity](https://kubernetes.io/docs/concepts/storage/persistent-volumes/#capacity) |
| persistence.data.mountPath | string | `"/usr/share/caddy"` | Mount path of the storage |
| persistence.enabled | bool | `true` | Enable/disable serving data from a PVC |
| persistence.storageClassName | string | `nil` | StorageClass to use, leave empty to use default StorageClass. |
| podAnnotations | object | `{}` | Additional pod annotations |
| podSecurityContext | object | `{}` |  |
| readinessProbe | object | `{"enabled":false,"failureThreshold":5,"initialDelaySeconds":10,"periodSeconds":5,"probe":{"httpGet":{"path":"/","port":"http","scheme":"HTTP"}},"successThreshold":1,"terminationGracePeriodSeconds":null,"timeoutSeconds":1}` | [Readiness probe](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#container-probes) See the [API reference](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#Probe) for details. |
| readinessProbe.enabled | bool | `false` | Enable/disable readiness |
| readinessProbe.probe | object | `{"httpGet":{"path":"/","port":"http","scheme":"HTTP"}}` | Configure [startup probe](https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/) |
| replicaCount | int | `1` | Number of replicas. Only used if autoscaling.enabled = false |
| resources.limits.cpu | string | `"500m"` |  |
| resources.limits.memory | string | `"500Mi"` |  |
| resources.requests.cpu | string | `"100m"` |  |
| resources.requests.memory | string | `"250Mi"` |  |
| securityContext | object | `{}` |  |
| service.port | int | `80` | Service port |
| service.type | string | `"ClusterIP"` | Type of service |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.create | bool | `false` | Specifies whether a service account should be created |
| serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template |
| startupProbe | object | `{"enabled":false,"failureThreshold":5,"initialDelaySeconds":10,"periodSeconds":5,"probe":{"httpGet":{"path":"/","port":"http","scheme":"HTTP"}},"successThreshold":1,"terminationGracePeriodSeconds":null,"timeoutSeconds":1}` | [Startup probe](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#container-probes) See the [API reference](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#Probe) for details. |
| startupProbe.enabled | bool | `false` | Enable/disable startup probe |
| startupProbe.probe | object | `{"httpGet":{"path":"/","port":"http","scheme":"HTTP"}}` | Configure [startup probe](https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/) |
| tolerations | list | `[]` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
