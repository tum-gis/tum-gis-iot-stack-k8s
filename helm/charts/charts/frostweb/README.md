# frostweb

![Version: 0.1.3](https://img.shields.io/badge/Version-0.1.3-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 2.0.4](https://img.shields.io/badge/AppVersion-2.0.4-informational?style=flat-square)

FROST-Server HTTP and MQTT service

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| alwaysOrderbyId | bool | `true` |  |
| auth.allowAnonymousRead | bool | `false` |  |
| auth.autoUpdateDatabase | bool | `true` |  |
| auth.db.auth.password | string | `"changeMe"` |  |
| auth.db.auth.username | string | `"postgres"` |  |
| auth.db.dbname | string | `"frost"` |  |
| auth.db.driver | string | `"org.postgresql.Driver"` |  |
| auth.db.host | string | `"frostdb-svc"` |  |
| auth.db.port | int | `5432` |  |
| auth.enabled | bool | `false` |  |
| auth.provider | string | `"de.fraunhofer.iosb.ilt.frostserver.auth.basic.BasicAuthProvider"` |  |
| auth.realmName | string | `"FROST-Server"` |  |
| component | string | `"webapp"` |  |
| defaultCount | bool | `false` |  |
| defaultTop | int | `100` |  |
| enabled | bool | `true` |  |
| http.cors.allowed_origins | string | `"*"` |  |
| http.cors.enabled | bool | `true` |  |
| http.domain | string | `nil` |  |
| http.protocol | string | `"https"` |  |
| http.subpath | string | `"frost"` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.registry | string | `"fraunhoferiosb"` |  |
| image.repository | string | `"frost-server"` |  |
| image.tag | string | `"2.0.4"` |  |
| ingress.certManager.issuer | string | `nil` |  |
| ingress.certManager.type | string | `nil` |  |
| ingress.ingressClassName | string | `nil` |  |
| maxDataSize | string | `"25000000"` |  |
| maxTop | int | `10000` |  |
| mqtt.enabled | bool | `true` |  |
| mqtt.host | string | `nil` |  |
| mqtt.qos | int | `2` |  |
| nodeSelector | object | `{}` |  |
| persistence.autoUpdateDatabase | bool | `true` |  |
| persistence.countEstimateThreshold | int | `10000` |  |
| persistence.countMode | string | `"LIMIT_SAMPLE"` |  |
| persistence.db.auth.password | string | `"changeMe"` |  |
| persistence.db.auth.username | string | `"postgres"` |  |
| persistence.db.dbname | string | `"frost"` |  |
| persistence.db.driver | string | `"org.postgresql.Driver"` |  |
| persistence.db.host | string | `"frostdb-svc"` |  |
| persistence.db.port | int | `5432` |  |
| persistence.idGenerationMode | string | `"ServerAndClientGenerated"` |  |
| persistence.queryTimeout | int | `0` |  |
| persistence.slowQueryThreshold | int | `200` |  |
| replicaCount | int | `1` |  |
| resources.limits.cpu | string | `"2000m"` |  |
| resources.limits.memory | string | `"4Gi"` |  |
| resources.requests.cpu | string | `"500m"` |  |
| resources.requests.memory | string | `"512Mi"` |  |
| tolerations | list | `[]` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)