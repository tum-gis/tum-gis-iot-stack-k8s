# frostweb

![Version: 0.6.3](https://img.shields.io/badge/Version-0.6.3-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 2.1.2](https://img.shields.io/badge/AppVersion-2.1.2-informational?style=flat-square)

FROST-Server HTTP and MQTT service.

**Homepage:** <https://github.com/tum-gis/tum-gis-iot-stack-k8s>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Bruno Willenborg | <b.willenborg@tum.de> | <https://www.asg.ed.tum.de/en/gis/our-team/staff/bruno-willenborg/> |

## Source Code

* <https://github.com/tum-gis/tum-gis-iot-stack-k8s/tree/main/helm/charts/charts/frostweb>
* <https://github.com/FraunhoferIOSB/FROST-Server>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| alwaysOrderbyId | bool | `false` |  |
| auth.allowAnonymousRead | bool | `false` | f true, anonymous users are allowed to read (GET) data. |
| auth.autoUpdateDatabase | bool | `true` | Automatically apply database updates. |
| auth.db.auth.password | string | `"changeMe"` |  |
| auth.db.auth.username | string | `"postgres"` |  |
| auth.db.dbname | string | `"frost"` |  |
| auth.db.driver | string | `"org.postgresql.Driver"` |  |
| auth.db.host | string | `"frostdb"` |  |
| auth.db.port | int | `5432` |  |
| auth.enabled | bool | `false` | FROST-Server Auth settings https://fraunhoferiosb.github.io/FROST-Server/settings/auth.html Enable/disable [FROST-Server Bash Authentication](https://fraunhoferiosb.github.io/FROST-Server/settings/auth.html) |
| auth.provider | string | `"de.fraunhofer.iosb.ilt.frostserver.auth.basic.BasicAuthProvider"` | The java class used to configure authentication/authorisation. |
| auth.realmName | string | `"FROST-Server"` | The name of the realm that the browser displays when asking for username and password. |
| autoscaling.enabled | bool | `false` | Enable/disable pod autoscaling, if disabled `replicaCount` is used to set number of pods. |
| autoscaling.maxReplicas | int | `5` | Maximum number of replicas |
| autoscaling.minReplicas | int | `1` | Minimum number of replicas |
| autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| component | string | `"http-mqtt"` |  |
| defaultCount | bool | `false` |  |
| defaultTop | int | `100` |  |
| enabled | bool | `true` | Enable/disable FRSOT-Server |
| extraEnv | object | `{}` | Extra environment variables. Watch out for unquoted strings! |
| fullnameOverride | string | `"frostweb"` | Override fullname |
| http.cors.allowed_origins | string | `"*"` |  |
| http.cors.enabled | bool | `true` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"fraunhoferiosb/frost-server"` | Image repository |
| image.tag | string | `""` | Overrides the image tag whose default is the chart appVersion. |
| imagePullSecrets | list | `[]` | [Image pull secrets](https://kubernetes.io/docs/tasks/configure-pod-container/pull-image-private-registry/) |
| ingress.annotations | string | `nil` | Additional Ingress annotations |
| ingress.certManager.issuerEmail | string | `"me@example.com"` | eMail address for ACME registration with Let's Encrypt. Only used for issuerType = namespace. |
| ingress.certManager.issuerName | string | `"letsencrypt-staging"` | Name of the Issuer to use. For certManager.type = namespace `letsencrypt-staging`, `letsencrypt-prod` and `self-signed` are available. |
| ingress.certManager.issuerType | string | `"namespace"` | Type of [cert-manager](https://cert-manager.io/docs/) Issuer: Use either "namespace" or "cluster". |
| ingress.className | string | `"nginx"` | Name of the [IngressClass](https://kubernetes.io/docs/concepts/services-networking/ingress/#ingress-class) to use in Ingress routes. |
| ingress.domains | list | `[]` | List of [FQDNs](https://de.wikipedia.org/wiki/Fully-Qualified_Host_Name) for this Ingress. Note: All FQDNs will be used for Ingress hosts and TLS certificate. The global setting overwrites this setting. Note: The first domain in the list will be used as FROST-Server serviceRootURL and MQTT host. |
| ingress.enabled | bool | `true` | Enable/disable ingress |
| ingress.subpath | string | `"frost"` | Make FROST-Server available at a subpath. By default FROST will be available from [DOMAIN]/ Don't append or prepend :// or / |
| livenessProbe.enabled | bool | `true` | Enable/disable liveness probe [Liveness probe](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#container-probes) See the [API reference](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#Probe) for details. Use `livenessProbe.probe: {}` to configure [livenessProbe probe](https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/) |
| livenessProbe.failureThreshold | int | `20` |  |
| livenessProbe.initialDelaySeconds | int | `10` |  |
| livenessProbe.periodSeconds | int | `5` |  |
| livenessProbe.probe.exec.command[0] | string | `"bash"` |  |
| livenessProbe.probe.exec.command[1] | string | `"-c"` |  |
| livenessProbe.probe.exec.command[2] | string | `"curl -f -s --show-error \"http://127.0.0.1:8080/FROST-Server/\""` |  |
| livenessProbe.successThreshold | int | `1` |  |
| livenessProbe.terminationGracePeriodSeconds | string | `nil` |  |
| livenessProbe.timeoutSeconds | int | `1` |  |
| logSensitiveData | bool | `false` |  |
| maxDataSize | string | `"25000000"` |  |
| maxTop | int | `10000` |  |
| mqtt.enabled | bool | `true` |  |
| mqtt.host | string | `"0.0.0.0"` |  |
| mqtt.qos | int | `2` | MQTT QoS |
| mqttService.port | int | `1883` | Service port for MQTT |
| mqttService.type | string | `"ClusterIP"` | Type of service for MQTT |
| nameOverride | string | `nil` | Override name |
| nodeSelector | object | `{}` |  |
| persistence.autoUpdateDatabase | bool | `true` |  |
| persistence.countEstimateThreshold | int | `10000` |  |
| persistence.countMode | string | `"LIMIT_SAMPLE"` |  |
| persistence.db.auth.password | string | `"changeMe"` |  |
| persistence.db.auth.username | string | `"postgres"` |  |
| persistence.db.dbname | string | `"frost"` |  |
| persistence.db.driver | string | `"org.postgresql.Driver"` |  |
| persistence.db.host | string | `"frostdb"` |  |
| persistence.db.port | int | `5432` |  |
| persistence.idGenerationMode | string | `"ServerGeneratedOnly"` |  |
| persistence.queryTimeout | int | `0` |  |
| persistence.slowQueryThreshold | int | `200` |  |
| podAnnotations | object | `{}` | Additional pod annotations |
| podSecurityContext | object | `{}` |  |
| readinessProbe.enabled | bool | `true` | Enable/disable readiness probe [Readiness probe](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#container-probes) See the [API reference](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#Probe) for details. Use `readinessProbe.probe: {}` to configure [readinessProbe probe](https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/) |
| readinessProbe.failureThreshold | int | `5` |  |
| readinessProbe.initialDelaySeconds | int | `10` |  |
| readinessProbe.periodSeconds | int | `5` |  |
| readinessProbe.probe.exec.command[0] | string | `"bash"` |  |
| readinessProbe.probe.exec.command[1] | string | `"-c"` |  |
| readinessProbe.probe.exec.command[2] | string | `"curl -f -s --show-error \"http://127.0.0.1:8080/FROST-Server/\""` |  |
| readinessProbe.successThreshold | int | `1` |  |
| readinessProbe.terminationGracePeriodSeconds | string | `nil` |  |
| readinessProbe.timeoutSeconds | int | `1` |  |
| replicaCount | int | `1` | Number of replicas. Only used if autoscaling.enabled = false |
| resources.limits.cpu | string | `"1000m"` |  |
| resources.limits.memory | string | `"1Gi"` |  |
| resources.requests.cpu | string | `"500m"` |  |
| resources.requests.memory | string | `"512Mi"` |  |
| securityContext | object | `{}` |  |
| service.port | int | `8080` | Service port for http |
| service.type | string | `"ClusterIP"` | Type of service for http |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.create | bool | `false` | Specifies whether a service account should be created |
| serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template |
| startupProbe.enabled | bool | `true` | Enable/disable startup probe [Startup probe](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#container-probes) See the [API reference](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#Probe) for details. Use `startup.probe: {}` to configure [startupProbe probe](https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/) |
| startupProbe.failureThreshold | int | `5` |  |
| startupProbe.initialDelaySeconds | int | `20` |  |
| startupProbe.periodSeconds | int | `5` |  |
| startupProbe.probe.exec.command[0] | string | `"bash"` |  |
| startupProbe.probe.exec.command[1] | string | `"-c"` |  |
| startupProbe.probe.exec.command[2] | string | `"curl -f -s --show-error \"http://127.0.0.1:8080/FROST-Server/\""` |  |
| startupProbe.successThreshold | int | `1` |  |
| startupProbe.terminationGracePeriodSeconds | string | `nil` |  |
| startupProbe.timeoutSeconds | int | `1` |  |
| tolerations | list | `[]` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
