# frostweb

![Version: 0.4.0](https://img.shields.io/badge/Version-0.4.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 2.0.6](https://img.shields.io/badge/AppVersion-2.0.6-informational?style=flat-square)

FROST-Server HTTP and MQTT service

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| alwaysOrderbyId | bool | `true` | FROST-Server General settings https://fraunhoferiosb.github.io/FROST-Server/settings/settings.html#general-settings |
| auth | object | `{"allowAnonymousRead":false,"autoUpdateDatabase":true,"db":{"auth":{"password":"changeMe","username":"postgres"},"dbname":"frost","driver":"org.postgresql.Driver","host":"frostdb","port":5432},"enabled":false,"provider":"de.fraunhofer.iosb.ilt.frostserver.auth.basic.BasicAuthProvider","realmName":"FROST-Server"}` | FROST-Server Auth settings https://fraunhoferiosb.github.io/FROST-Server/settings/auth.html |
| auth.allowAnonymousRead | bool | `false` | f true, anonymous users are allowed to read (GET) data. |
| auth.autoUpdateDatabase | bool | `true` | Automatically apply database updates. |
| auth.enabled | bool | `false` | Enable/disable [FROST-Server Bash Authentication](https://fraunhoferiosb.github.io/FROST-Server/settings/auth.html) |
| auth.provider | string | `"de.fraunhofer.iosb.ilt.frostserver.auth.basic.BasicAuthProvider"` | The java class used to configure authentication/authorisation. |
| auth.realmName | string | `"FROST-Server"` | The name of the realm that the browser displays when asking for username and password. |
| autoscaling.enabled | bool | `false` | Enable/disable pod autoscaling, if disabled `replicaCount` is used to set number of pods. |
| autoscaling.maxReplicas | int | `5` | Maximum number of replicas |
| autoscaling.minReplicas | int | `1` | Minimum number of replicas |
| autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| component | string | `"http-mqtt"` |  |
| defaultCount | bool | `false` |  |
| defaultTop | int | `100` |  |
| enabled | bool | `true` |  |
| extraEnv | object | `{}` | Extra environment variables. Values need to be quoted. |
| fullnameOverride | string | `"frostweb"` | Override fullname |
| http | object | `{"cors":{"allowed_origins":"*","enabled":true}}` | FROST-Server HTTP settings https://fraunhoferiosb.github.io/FROST-Server/settings/settings.html#http-settings |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"fraunhoferiosb/frost-server"` | Image repository |
| image.tag | string | `""` | Overrides the image tag whose default is the chart appVersion. |
| imagePullSecrets | list | `[]` | [Image pull secrets](https://kubernetes.io/docs/tasks/configure-pod-container/pull-image-private-registry/) |
| ingress | object | `{"annotations":null,"certManager":{"issuerEmail":"me@example.com","issuerName":"letsencrypt-staging","issuerType":"namespace"},"className":"nginx","domains":[],"enabled":true,"subpath":"frost"}` | Ingress configuration |
| ingress.annotations | string | `nil` | Additional Ingress annotations |
| ingress.certManager.issuerEmail | string | `"me@example.com"` | eMail address for ACME registration with Let's Encrypt. Only used for issuerType = namespace. |
| ingress.certManager.issuerName | string | `"letsencrypt-staging"` | Name of the Issuer to use. For certManager.type = namespace `letsencrypt-staging`, `letsencrypt-prod` and `self-signed` are available. |
| ingress.certManager.issuerType | string | `"namespace"` | Type of [cert-manager](https://cert-manager.io/docs/) Issuer: Use either "namespace" or "cluster". |
| ingress.className | string | `"nginx"` | Name of the [IngressClass](https://kubernetes.io/docs/concepts/services-networking/ingress/#ingress-class) to use in Ingress routes. |
| ingress.domains | list | `[]` | List of [FQDNs](https://de.wikipedia.org/wiki/Fully-Qualified_Host_Name) for this Ingress. Note: All FQDNs will be used for Ingress hosts and TLS certificate. The global setting overwrites this setting. Note: The first domain in the list will be used as FROST-Server serviceRootURL and MQTT host. |
| ingress.enabled | bool | `true` | Enable/disable ingress |
| ingress.subpath | string | `"frost"` | Make FROST-Server available at a subpath. By default FROST will be available from [DOMAIN]/ Don't append or prepend :// or / |
| maxDataSize | string | `"25000000"` |  |
| maxTop | int | `10000` |  |
| mqtt | object | `{"enabled":true,"host":"0.0.0.0","qos":2}` | FROST-Server MQTT settings https://fraunhoferiosb.github.io/FROST-Server/settings/settings.html#mqtt-settings |
| mqtt.enabled | bool | `true` | Enable/disable MQTT |
| mqtt.qos | int | `2` | MQTT QoS |
| mqttService.port | int | `1883` | Service port for MQTT |
| mqttService.type | string | `"ClusterIP"` | Type of service for MQTT |
| nameOverride | string | `nil` | Override name |
| nodeSelector | object | `{}` |  |
| persistence | object | `{"autoUpdateDatabase":true,"countEstimateThreshold":10000,"countMode":"LIMIT_SAMPLE","db":{"auth":{"password":"changeMe","username":"postgres"},"dbname":"frost","driver":"org.postgresql.Driver","host":"frostdb","port":5432},"idGenerationMode":"ServerAndClientGenerated","queryTimeout":0,"slowQueryThreshold":200}` | FROST-Server Persistence settings https://fraunhoferiosb.github.io/FROST-Server/settings/settings.html#persistence-settings |
| podAnnotations | object | `{}` | Additional pod annotations |
| podSecurityContext | object | `{}` |  |
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
| tolerations | list | `[]` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
