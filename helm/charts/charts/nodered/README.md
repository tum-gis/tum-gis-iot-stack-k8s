# nodered

![Version: 0.5.0](https://img.shields.io/badge/Version-0.5.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 3.0.2](https://img.shields.io/badge/AppVersion-3.0.2-informational?style=flat-square)

Node-RED instance

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| component | string | `"backend"` |  |
| enabled | bool | `true` |  |
| extraEnv | object | `{}` | Extra environment variables |
| fullnameOverride | string | `"nodered"` | Override fullname |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"nodered/node-red"` | Image repository |
| image.tag | string | `""` | Overrides the image tag whose default is the chart appVersion. |
| imagePullSecrets | list | `[]` | [Image pull secrets](https://kubernetes.io/docs/tasks/configure-pod-container/pull-image-private-registry/) |
| ingress | object | `{"annotations":null,"certManager":{"issuerEmail":"me@example.com","issuerName":"letsencrypt-staging","issuerType":"namespace"},"className":"nginx","domains":[],"enabled":true,"subpath":"nodered"}` | Ingress configuration |
| ingress.annotations | string | `nil` | Additional Ingress annotations |
| ingress.certManager.issuerEmail | string | `"me@example.com"` | eMail address for ACME registration with Let's Encrypt. Only used for issuerType = namespace. |
| ingress.certManager.issuerName | string | `"letsencrypt-staging"` | Name of the Issuer to use. For certManager.type = namespace `letsencrypt-staging`, `letsencrypt-prod` and `self-signed` are available. |
| ingress.certManager.issuerType | string | `"namespace"` | Type of [cert-manager](https://cert-manager.io/docs/) Issuer: Use either "namespace" or "cluster". |
| ingress.className | string | `"nginx"` | Name of the [IngressClass](https://kubernetes.io/docs/concepts/services-networking/ingress/#ingress-class) to use in Ingress routes. |
| ingress.domains | list | `[]` | List of [FQDNs](https://de.wikipedia.org/wiki/Fully-Qualified_Host_Name) for this Ingress. Note: All FQDNs will be used for Ingress hosts and TLS certificate. The global setting overwrites this setting. Note: The first domain in the list will be used as FROST-Server serviceRootURL and MQTT host. |
| ingress.enabled | bool | `true` | Enable/disable ingress |
| ingress.subpath | string | `"nodered"` | Make Node-RED available at a subpath. By default Node-RED will be available from [DOMAIN]/ Don't append or prepend :// or / |
| livenessProbe | object | `{"enabled":true,"failureThreshold":20,"initialDelaySeconds":10,"periodSeconds":5,"probe":{"exec":{"command":["bash","-c","curl http://localhost:1880/ || exit 1"]}},"successThreshold":1,"terminationGracePeriodSeconds":null,"timeoutSeconds":1}` | [Liveness probe](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#container-probes) See the [API reference](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#Probe) for details. |
| livenessProbe.enabled | bool | `true` | Enable/disable liveness probe |
| livenessProbe.probe | object | `{"exec":{"command":["bash","-c","curl http://localhost:1880/ || exit 1"]}}` | Configure [startup probe](https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/) |
| nameOverride | string | `""` | Override name |
| nodeSelector | object | `{}` |  |
| persistence.data.accessModes | list | `["ReadWriteOnce"]` | Storage [access modes](https://kubernetes.io/docs/concepts/storage/persistent-volumes/#access-modes) |
| persistence.data.capacity | string | `"2Gi"` | Storage [capacity](https://kubernetes.io/docs/concepts/storage/persistent-volumes/#capacity) |
| persistence.data.mountPath | string | `"/data"` | Mount path of the storage |
| persistence.enabled | bool | `false` | Enable/disable persistent storage of settings and flows |
| persistence.storageClassName | string | `nil` | StorageClass to use, leave empty to use default StorageClass. |
| podAnnotations | object | `{}` | Additional pod annotations |
| podSecurityContext.fsGroup | int | `1000` |  |
| podSecurityContext.runAsUser | int | `1000` | Run as Node-RED user |
| readinessProbe | object | `{"enabled":true,"failureThreshold":5,"initialDelaySeconds":10,"periodSeconds":5,"probe":{"exec":{"command":["bash","-c","curl http://localhost:1880/ || exit 1"]}},"successThreshold":1,"terminationGracePeriodSeconds":null,"timeoutSeconds":1}` | [Readiness probe](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#container-probes) See the [API reference](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#Probe) for details. |
| readinessProbe.enabled | bool | `true` | Enable/disable readiness probe |
| readinessProbe.probe | object | `{"exec":{"command":["bash","-c","curl http://localhost:1880/ || exit 1"]}}` | Configure [startup probe](https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/) |
| replicaCount | int | `1` | Number of replicas. Note: As of 2023-01  there is no easy way to scale Node-RED horizontally accross clsuters. Leave this set to `1` unless you know what you are doing. |
| resources.limits.cpu | string | `"1000m"` |  |
| resources.limits.memory | string | `"1Gi"` |  |
| resources.requests.cpu | string | `"250m"` |  |
| resources.requests.memory | string | `"250Mi"` |  |
| security.adminPassword | string | `"$2b$08$2UedHI9nnjDY/LANnfT/ruzyWa.ZGzW46r7xBAvsh8GmlZS70k2e."` | Node-RED admin password. default = `changeMe` |
| security.adminUsername | string | `"admin"` | Node-RED admin username |
| security.credentialsSecret | string | `"changeMe"` | Node-RED credentials secret |
| securityContext | object | `{}` |  |
| service.port | int | `3000` | Service port for http |
| service.type | string | `"ClusterIP"` | Type of service for http |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.create | bool | `false` | Specifies whether a service account should be created |
| serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template |
| settings.enableProjects | bool | `true` | Enable/disable Node-RED projects |
| settings.tz | string | `"Europe/Berlin"` | Node-RED timezone settings |
| startupProbe | object | `{"enabled":true,"failureThreshold":5,"initialDelaySeconds":10,"periodSeconds":5,"probe":{"exec":{"command":["bash","-c","curl http://localhost:1880/ || exit 1"]}},"successThreshold":1,"terminationGracePeriodSeconds":null,"timeoutSeconds":1}` | [Startup probe](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#container-probes) See the [API reference](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#Probe) for details. |
| startupProbe.enabled | bool | `true` | Enable/disable startup probe |
| startupProbe.probe | object | `{"exec":{"command":["bash","-c","curl http://localhost:1880/ || exit 1"]}}` | Configure [startup probe](https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/) |
| tolerations | list | `[]` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
