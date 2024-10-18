# frostdb

![Version: 0.6.0](https://img.shields.io/badge/Version-0.6.0-informational?style=flat-square) ![AppVersion: 16-3.4-alpine](https://img.shields.io/badge/AppVersion-16--3.4--alpine-informational?style=flat-square)

Basic chart for a PostgreSQL/PostGIS database.

**Homepage:** <https://github.com/tum-gis/tum-gis-iot-stack-k8s>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Bruno Willenborg | <b.willenborg@tum.de> | <https://www.asg.ed.tum.de/en/gis/our-team/staff/bruno-willenborg/> |

## Source Code

* <https://github.com/tum-gis/tum-gis-iot-stack-k8s/tree/main/helm/charts/charts/frostdb>
* <https://registry.hub.docker.com/r/postgis/postgis/>
* <https://github.com/postgis/docker-postgis>

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
| livenessProbe.enabled | bool | `true` | Enable/disable liveness probe [Liveness probe](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#container-probes) See the [API reference](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#Probe) for details. Use `livenessProbe.probe: {}` to configure [livenessProbe probe](https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/) |
| livenessProbe.failureThreshold | int | `5` |  |
| livenessProbe.initialDelaySeconds | int | `10` |  |
| livenessProbe.periodSeconds | int | `5` |  |
| livenessProbe.probe.exec.command[0] | string | `"sh"` |  |
| livenessProbe.probe.exec.command[1] | string | `"-c"` |  |
| livenessProbe.probe.exec.command[2] | string | `"pg_isready -U $POSTGRES_USER -d $POSTGRES_DB"` |  |
| livenessProbe.successThreshold | int | `1` |  |
| livenessProbe.terminationGracePeriodSeconds | string | `nil` |  |
| livenessProbe.timeoutSeconds | int | `1` |  |
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
| readinessProbe.enabled | bool | `true` | Enable/disable readiness probe [Readiness probe](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#container-probes) See the [API reference](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#Probe) for details. Use `readinessProbe.probe: {}` to configure [readinessProbe probe](https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/) |
| readinessProbe.failureThreshold | int | `5` |  |
| readinessProbe.initialDelaySeconds | int | `10` |  |
| readinessProbe.periodSeconds | int | `5` |  |
| readinessProbe.probe.exec.command[0] | string | `"sh"` |  |
| readinessProbe.probe.exec.command[1] | string | `"-c"` |  |
| readinessProbe.probe.exec.command[2] | string | `"pg_isready -U $POSTGRES_USER -d $POSTGRES_DB"` |  |
| readinessProbe.successThreshold | int | `1` |  |
| readinessProbe.terminationGracePeriodSeconds | string | `nil` |  |
| readinessProbe.timeoutSeconds | int | `1` |  |
| resources.limits.cpu | string | `"2000m"` |  |
| resources.limits.memory | string | `"4Gi"` |  |
| resources.requests.cpu | string | `"1000m"` |  |
| resources.requests.memory | string | `"1Gi"` |  |
| securityContext | object | `{}` |  |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.create | bool | `false` | Specifies whether a service account should be created |
| serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template |
| startupProbe.enabled | bool | `true` | Enable/disable startup probe [Startup probe](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#container-probes) See the [API reference](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#Probe) for details. Use `startup.probe: {}` to configure [startupProbe probe](https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/) |
| startupProbe.failureThreshold | int | `10` |  |
| startupProbe.initialDelaySeconds | int | `20` |  |
| startupProbe.periodSeconds | int | `5` |  |
| startupProbe.probe.exec.command[0] | string | `"sh"` |  |
| startupProbe.probe.exec.command[1] | string | `"-c"` |  |
| startupProbe.probe.exec.command[2] | string | `"pg_isready -U $POSTGRES_USER -d $POSTGRES_DB"` |  |
| startupProbe.successThreshold | int | `1` |  |
| startupProbe.terminationGracePeriodSeconds | string | `nil` |  |
| startupProbe.timeoutSeconds | int | `1` |  |
| tolerations | list | `[]` |  |

