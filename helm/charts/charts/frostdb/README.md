# frostdb

![Version: 0.5.0](https://img.shields.io/badge/Version-0.5.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 14-3.3-alpine](https://img.shields.io/badge/AppVersion-14--3.3--alpine-informational?style=flat-square)

PostGIS database in a local volume for FROST-Server.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| auth.password | string | `"changeMe"` | Database password |
| auth.username | string | `"postgres"` | Database user |
| component | string | `"database"` |  |
| dbname | string | `"frost"` | Database name |
| enabled | bool | `true` |  |
| extraEnv | object | `{}` | Extra environment variables |
| fullnameOverride | string | `"frostdb"` | Override fullname |
| image.pullPolicy | string | `"IfNotPresent"` | Image pull policy |
| image.repository | string | `"postgis/postgis"` | Image repository |
| image.tag | string | `""` | Overrides the image tag whose default is the chart appVersion. |
| imagePullSecrets | list | `[]` | [Image pull secrets](https://kubernetes.io/docs/tasks/configure-pod-container/pull-image-private-registry/) |
| livenessProbe | object | `{"enabled":true,"failureThreshold":5,"initialDelaySeconds":10,"periodSeconds":5,"probe":{"exec":{"command":["sh","-c","pg_isready -U $POSTGRES_USER -d $POSTGRES_DB"]}},"successThreshold":1,"terminationGracePeriodSeconds":null,"timeoutSeconds":1}` | [Liveness probe](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#container-probes) See the [API reference](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#Probe) for details. |
| livenessProbe.enabled | bool | `true` | Enable/disable liveness probe |
| livenessProbe.probe | object | `{"exec":{"command":["sh","-c","pg_isready -U $POSTGRES_USER -d $POSTGRES_DB"]}}` | Configure [startup probe](https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/) |
| loadBalancer.enabled | bool | `false` | Enable/disable a LoadBalancer service for external Database access |
| nameOverride | string | `nil` | Override name |
| nodeSelector | object | `{}` |  |
| persistence.accessModes | list | `["ReadWriteOnce"]` | Storage [access modes](https://kubernetes.io/docs/concepts/storage/persistent-volumes/#access-modes) |
| persistence.capacity | string | `"4Gi"` | Storage [capacity](https://kubernetes.io/docs/concepts/storage/persistent-volumes/#capacity) |
| persistence.mountPath | string | `"/mydata"` | Mount path of the storage. Omit trailing `/` ! |
| persistence.pgdataSubPath | string | `"/pgdata"` | Subpath inside `mountPath` for the postgres data folder |
| persistence.storageClassName | string | `nil` | StorageClass to use, leave empty to use default StorageClass. |
| podAnnotations | object | `{}` | Additional pod annotations |
| podSecurityContext | object | `{}` |  |
| port | int | `5432` | Database port |
| readinessProbe | object | `{"enabled":true,"failureThreshold":5,"initialDelaySeconds":10,"periodSeconds":5,"probe":{"exec":{"command":["sh","-c","pg_isready -U $POSTGRES_USER -d $POSTGRES_DB"]}},"successThreshold":1,"terminationGracePeriodSeconds":null,"timeoutSeconds":1}` | [Readiness probe](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#container-probes) See the [API reference](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#Probe) for details. |
| readinessProbe.enabled | bool | `true` | Enable/disable readiness probe |
| readinessProbe.probe | object | `{"exec":{"command":["sh","-c","pg_isready -U $POSTGRES_USER -d $POSTGRES_DB"]}}` | Configure [startup probe](https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/) |
| resources.limits.cpu | string | `"2000m"` |  |
| resources.limits.memory | string | `"4Gi"` |  |
| resources.requests.cpu | string | `"1000m"` |  |
| resources.requests.memory | string | `"1Gi"` |  |
| securityContext | object | `{}` |  |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.create | bool | `false` | Specifies whether a service account should be created |
| serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template |
| startupProbe | object | `{"enabled":true,"failureThreshold":10,"initialDelaySeconds":20,"periodSeconds":5,"probe":{"exec":{"command":["sh","-c","pg_isready -U $POSTGRES_USER -d $POSTGRES_DB"]}},"successThreshold":1,"terminationGracePeriodSeconds":null,"timeoutSeconds":1}` | [Startup probe](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#container-probes) See the [API reference](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#Probe) for details. |
| startupProbe.enabled | bool | `true` | Enable/disable startup probe |
| startupProbe.probe | object | `{"exec":{"command":["sh","-c","pg_isready -U $POSTGRES_USER -d $POSTGRES_DB"]}}` | Configure [startup probe](https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/) |
| tolerations | list | `[]` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
