# nodered

![Version: 0.6.0](https://img.shields.io/badge/Version-0.6.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 4.0.5](https://img.shields.io/badge/AppVersion-4.0.5-informational?style=flat-square)

Basic chart for Node-RED.

**Homepage:** <https://github.com/tum-gis/tum-gis-iot-stack-k8s>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Bruno Willenborg | <b.willenborg@tum.de> | <https://www.asg.ed.tum.de/en/gis/our-team/staff/bruno-willenborg/> |

## Source Code

* <https://github.com/tum-gis/tum-gis-iot-stack-k8s/tree/main/helm/charts/charts/nodered>
* <https://github.com/node-red/node-red>

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
| ingress.annotations | string | `nil` | Additional Ingress annotations |
| ingress.certManager.issuerEmail | string | `"me@example.com"` | eMail address for ACME registration with Let's Encrypt. Only used for issuerType = namespace. |
| ingress.certManager.issuerName | string | `"letsencrypt-staging"` | Name of the Issuer to use. For certManager.type = namespace `letsencrypt-staging`, `letsencrypt-prod` and `self-signed` are available. |
| ingress.certManager.issuerType | string | `"namespace"` | Type of [cert-manager](https://cert-manager.io/docs/) Issuer: Use either "namespace" or "cluster". |
| ingress.className | string | `"nginx"` | Name of the [IngressClass](https://kubernetes.io/docs/concepts/services-networking/ingress/#ingress-class) to use in Ingress routes. |
| ingress.domains | list | `[]` | List of [FQDNs](https://de.wikipedia.org/wiki/Fully-Qualified_Host_Name) for this Ingress. Note: All FQDNs will be used for Ingress hosts and TLS certificate. The global setting overwrites this setting. |
| ingress.enabled | bool | `true` | Enable/disable ingress |
| ingress.subpath | string | `"nodered"` | Make Node-RED available at a subpath. By default Node-RED will be available from [DOMAIN]/ Don't append or prepend :// or / |
| livenessProbe.enabled | bool | `true` | Enable/disable liveness probe [Liveness probe](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#container-probes) See the [API reference](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#Probe) for details. Use `livenessProbe.probe: {}` to configure [livenessProbe probe](https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/) |
| livenessProbe.failureThreshold | int | `20` |  |
| livenessProbe.initialDelaySeconds | int | `10` |  |
| livenessProbe.periodSeconds | int | `5` |  |
| livenessProbe.probe.exec.command[0] | string | `"bash"` |  |
| livenessProbe.probe.exec.command[1] | string | `"-c"` |  |
| livenessProbe.probe.exec.command[2] | string | `"curl http://localhost:1880/ || exit 1"` |  |
| livenessProbe.successThreshold | int | `1` |  |
| livenessProbe.terminationGracePeriodSeconds | string | `nil` |  |
| livenessProbe.timeoutSeconds | int | `1` |  |
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
| readinessProbe.enabled | bool | `true` | Enable/disable readiness probe [Readiness probe](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#container-probes) See the [API reference](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#Probe) for details. Use `readinessProbe.probe: {}` to configure [readinessProbe probe](https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/) |
| readinessProbe.failureThreshold | int | `5` |  |
| readinessProbe.initialDelaySeconds | int | `10` |  |
| readinessProbe.periodSeconds | int | `5` |  |
| readinessProbe.probe.exec.command[0] | string | `"bash"` |  |
| readinessProbe.probe.exec.command[1] | string | `"-c"` |  |
| readinessProbe.probe.exec.command[2] | string | `"curl http://localhost:1880/ || exit 1"` |  |
| readinessProbe.successThreshold | int | `1` |  |
| readinessProbe.terminationGracePeriodSeconds | string | `nil` |  |
| readinessProbe.timeoutSeconds | int | `1` |  |
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
| startupProbe.enabled | bool | `true` | Enable/disable startup probe [Startup probe](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#container-probes) See the [API reference](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#Probe) for details. Use `startup.probe: {}` to configure [startupProbe probe](https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/) |
| startupProbe.failureThreshold | int | `5` |  |
| startupProbe.initialDelaySeconds | int | `10` |  |
| startupProbe.periodSeconds | int | `5` |  |
| startupProbe.probe.exec.command[0] | string | `"bash"` |  |
| startupProbe.probe.exec.command[1] | string | `"-c"` |  |
| startupProbe.probe.exec.command[2] | string | `"curl http://localhost:1880/ || exit 1"` |  |
| startupProbe.successThreshold | int | `1` |  |
| startupProbe.terminationGracePeriodSeconds | string | `nil` |  |
| startupProbe.timeoutSeconds | int | `1` |  |
| tolerations | list | `[]` |  |

