# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).
Versions are prefixed with `tum-gis-iot-stack-k8s-` due to usage of
[chart-releaser-action](https://github.com/helm/chart-releaser-action).
For releases `< 1.0.0` minor version step indicate breaking changes.

## [Unreleased] - 2024-10-15

### Breaking changes

### Added

### Changed

- Bump Caddy `2.6.4-alpine` --> `2.8.4-alpine`
- Bump FROST-Server `2.1.4` --> `2.4.2`
- Bump Grafana `10.2.4` --> `11.2.2`
- Bump Node-RED `3.0.2` --> `4.0.5`
- PostgresSQL/PostGIS `14-3.3-alpine` --> `16-3.4-alpine`

### Removed

### Fixed

- Use ``ImplementationSpecific`` instead of ``Prerfix`` for Ingress ``pathType``

### Security

### Deprecated

### Known issues

## [tum-gis-iot-stack-k8s-0.10.2] - 2023-08-17

## Changed

- Bump Grafana `10.0.2` --> `10.0.3`

### Fixed

- Fixed SMTP settings change did not trigger pod recreation
- Fixed SMTP settings secret
- Fixed settings config map error when `grafana.featureToggles.enable` set
- Fixed wrong labels set on Grafana Ingress
- Fixed Grafana >= v10 redirect loop when serving Grafana from subpath
- Update Grafana plugins

## [tum-gis-iot-stack-k8s-0.10.1] - 2023-07-19

### Changed

- Link `CHANGELOG.md` in release notes.

## [tum-gis-iot-stack-k8s-0.10.0] - 2023-07-19

### Added

- Added Grafana `featureToggles.enable` option. `publicDashboards` feature is now enabled by default.

### Changed

- Bump FROST-Server `2.1.2` --> `2.1.4`

### Breaking changes

- Bump Grafana `9.5.1` --> `10.0.2`

## [tum-gis-iot-stack-k8s-0.9.10] - 2023-05-09

### Added

- Exposed some more FROST-Sever settings in `values.yml`

## [tum-gis-iot-stack-k8s-0.9.9] - 2023-05-09

### Changed

- Some FROST-Server default settings

### Fixed

- FROST-Server `defaultCount` not set due to missing variable in template

## [tum-gis-iot-stack-k8s-0.9.8] - 2023-05-08

### Added

- Github issue form

### Changed

- Bump FROST-Server `2.1.1` --> `2.1.2`

## [tum-gis-iot-stack-k8s-0.9.7] - 2023-05-02

### Changed

- Bump Grafana `9.4.3` --> `9.5.1`

### Fixed

- Helm releaser now only runs on chart changes

## [tum-gis-iot-stack-k8s-0.9.6] - 2023-03-22

### Fixed

- Release to fix Zenodo DOI releases

## [tum-gis-iot-stack-k8s-0.9.5] - 2023-03-22

### Added

- Added support for citing this repo with a DOI provided by https://zenodo.org:
  [![DOI](https://zenodo.org/badge/506671603.svg)](https://zenodo.org/badge/latestdoi/506671603)

## [tum-gis-iot-stack-k8s-0.9.4] - 2023-03-09

### Changed

- Bump Caddy `2.6.2-alpine` --> `2.6.4-alpine`

## [tum-gis-iot-stack-k8s-0.9.3] - 2023-03-09

### Changed

- Bump FROST-Server `2.1.0` --> `2.1.1`
- Set `appVersion` of chart to version of FROST-Server, which is the core component.

## [tum-gis-iot-stack-k8s-0.9.2] - 2023-03-09

### Changed

- Bump Grafana `9.3.6` --> `9.4.3`

## [tum-gis-iot-stack-k8s-0.9.1] - 2023-02-17

### Fixed

- Fixed Grafana deployment typo

## [tum-gis-iot-stack-k8s-0.9.0] - 2023-02-16

### Added

- Support for high availability
  [PostgreSQL database backend](https://artifacthub.io/packages/helm/bitnami/postgresql-ha)
  - **Note:** Switching to the new database backend require database migration e.g. via
    using `pg_dump` and `pg_restore`.

### Changed

- Reworked [README.md](README.md)
- Documentation updates
- Minor changes to default values
- Bump FROST-Server `2.0.6` --> `2.1.0`
- Expose Grafana SMTP settings in `values.yml`

## [tum-gis-iot-stack-k8s-0.8.2]: - 2023-02-03

### Changed

- Grafana database creation container now uses `template1` db for connection,
  as it is usually available on all postgres servers.

## [tum-gis-iot-stack-k8s-0.8.1]: - 2023-02-02

### Changed

- Bump Grafana `9.3.2` --> `9.3.6`

## [tum-gis-iot-stack-k8s-0.8.0]: - 2023-01-17

- Versions before this release are development snapshots

## [Unreleased] - YYYY-MM-DD

### Breaking changes

### Added

### Changed

### Removed

### Fixed

### Security

### Deprecated

### Known issues

## [template] - YYYY-MM-DD

### Breaking changes

### Added

### Changed

### Removed

### Fixed

### Security

### Deprecated

### Known issues

[Unreleased]: https://github.com/tum-gis/tum-gis-iot-stack-k8s/compare/tum-gis-iot-stack-k8s-0.10.2...HEAD
[tum-gis-iot-stack-k8s-0.10.2]: https://github.com/tum-gis/tum-gis-iot-stack-k8s/compare/tum-gis-iot-stack-k8s-0.10.1...tum-gis-iot-stack-k8s-0.10.2
[tum-gis-iot-stack-k8s-0.10.1]: https://github.com/tum-gis/tum-gis-iot-stack-k8s/compare/tum-gis-iot-stack-k8s-0.10.0...tum-gis-iot-stack-k8s-0.10.1
[tum-gis-iot-stack-k8s-0.10.0]: https://github.com/tum-gis/tum-gis-iot-stack-k8s/compare/tum-gis-iot-stack-k8s-0.9.10...tum-gis-iot-stack-k8s-0.10.0
[tum-gis-iot-stack-k8s-0.9.10]: https://github.com/tum-gis/tum-gis-iot-stack-k8s/compare/tum-gis-iot-stack-k8s-0.9.9...tum-gis-iot-stack-k8s-0.9.10
[tum-gis-iot-stack-k8s-0.9.9]: https://github.com/tum-gis/tum-gis-iot-stack-k8s/compare/tum-gis-iot-stack-k8s-0.9.8...tum-gis-iot-stack-k8s-0.9.9
[tum-gis-iot-stack-k8s-0.9.8]: https://github.com/tum-gis/tum-gis-iot-stack-k8s/compare/tum-gis-iot-stack-k8s-0.9.7...tum-gis-iot-stack-k8s-0.9.8
[tum-gis-iot-stack-k8s-0.9.7]: https://github.com/tum-gis/tum-gis-iot-stack-k8s/compare/tum-gis-iot-stack-k8s-0.9.6...tum-gis-iot-stack-k8s-0.9.7
[tum-gis-iot-stack-k8s-0.9.6]: https://github.com/tum-gis/tum-gis-iot-stack-k8s/compare/tum-gis-iot-stack-k8s-0.9.5...tum-gis-iot-stack-k8s-0.9.6
[tum-gis-iot-stack-k8s-0.9.5]: https://github.com/tum-gis/tum-gis-iot-stack-k8s/compare/tum-gis-iot-stack-k8s-0.9.4...tum-gis-iot-stack-k8s-0.9.5
[tum-gis-iot-stack-k8s-0.9.4]: https://github.com/tum-gis/tum-gis-iot-stack-k8s/compare/tum-gis-iot-stack-k8s-0.9.3...tum-gis-iot-stack-k8s-0.9.4
[tum-gis-iot-stack-k8s-0.9.3]: https://github.com/tum-gis/tum-gis-iot-stack-k8s/compare/tum-gis-iot-stack-k8s-0.9.2...tum-gis-iot-stack-k8s-0.9.3
[tum-gis-iot-stack-k8s-0.9.2]: https://github.com/tum-gis/tum-gis-iot-stack-k8s/compare/tum-gis-iot-stack-k8s-0.9.1...tum-gis-iot-stack-k8s-0.9.2
[tum-gis-iot-stack-k8s-0.9.1]: https://github.com/tum-gis/tum-gis-iot-stack-k8s/compare/tum-gis-iot-stack-k8s-0.9.0...tum-gis-iot-stack-k8s-0.9.1
[tum-gis-iot-stack-k8s-0.9.0]: https://github.com/tum-gis/tum-gis-iot-stack-k8s/compare/tum-gis-iot-stack-k8s-0.8.2...tum-gis-iot-stack-k8s-0.9.0
[tum-gis-iot-stack-k8s-0.8.2]: https://github.com/tum-gis/tum-gis-iot-stack-k8s/compare/tum-gis-iot-stack-k8s-0.8.1...tum-gis-iot-stack-k8s-0.8.2
[tum-gis-iot-stack-k8s-0.8.1]: https://github.com/tum-gis/tum-gis-iot-stack-k8s/compare/tum-gis-iot-stack-k8s-0.8.0...tum-gis-iot-stack-k8s-0.8.1
[tum-gis-iot-stack-k8s-0.8.0]: https://github.com/tum-gis/tum-gis-iot-stack-k8s/compare/tum-gis-iot-stack-k8s-0.1.1...tum-gis-iot-stack-k8s-0.8.0
[template]: https://keepachangelog.com/en/1.0.0/
