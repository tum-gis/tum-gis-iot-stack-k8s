<h1 align="center">TUM-GIS IoT Stack for Kubernetes</h1>

<p align="center">
  <em>an application stack for managing, integrating, storing,
  and visualizing sensor data with open standards and tools based on<a title="Open Geospatial Consortium Homepage" href="https://www.ogc.org/standards/sensorthings">OGC SensorThingsAPI</a>
  </em>
  <br />
  <br />
  <a href="https://github.com/tum-gis/tum-gis-iot-stack-k8s/issues">Report Bug</a>
  ·
  <a href="https://github.com/tum-gis/tum-gis-iot-stack-k8s/issues">Request Feature</a>
  <br />
  <br />
  <a href="https://github.com/tum-gis/tum-gis-iot-stack-k8s/releases" title="Latest release">
    <img src="https://img.shields.io/github/v/release/tum-gis/tum-gis-iot-stack-k8s?sort=semver">
  </a>
    <a href="https://github.com/tum-gis/tum-gis-iot-stack-k8s/blob/main/CHANGELOG.md">
    <img alt="GitHub Workflow Status" src="https://img.shields.io/github/actions/workflow/status/tum-gis/tum-gis-iot-stack-k8s/chart-releaser.yml?label=Helm%20release&logo=helm">
  </a>
  <br />
  <a href="https://doi.org/10.5281/zenodo.7759805">
    <img src="https://zenodo.org/badge/DOI/10.5281/zenodo.7759805.svg" alt="DOI" />
  </a>
</p>

## :zzz: TL;DR

Deploy the IoT-Stack in a Kubernetes cluster with
[`ingress-nginx`](https://kubernetes.github.io/ingress-nginx) and
[`cert-manager`](https://cert-manager.io/) available,
and a FQDN (e.g. `www.my-iot-stack.de`) pointing to your Ingress controller.

```bash
helm repo add iot-stack https://tum-gis.github.io/tum-gis-iot-stack-k8s
helm repo update
helm install iot iot-stack/tum-gis-iot-stack-k8s \
  -n iot-stack --create-namespace \
  --atomic --wait \
  --set 'global.ingress.domains={www.my-iot-stack.de}' \
  --set 'global.ingress.certManager.issuerEmail=myemailaddress@example.de'
```

The default username and password for all services is: `user: admin`, `pwd: changeMe`.

For local testing check out the [examples](examples).

## :book: Table of content

- [:zzz: TL;DR](#zzz-tldr)
- [:book: Table of content](#book-table-of-content)
- [:inbox\_tray: Application stack](#inbox_tray-application-stack)
- [:question: Getting started](#question-getting-started)
- [:page\_with\_curl: Documentation](#page_with_curl-documentation)
- [:rocket: Usage](#rocket-usage)
- [:hammer\_and\_wrench: Contributing](#hammer_and_wrench-contributing)
  - [Repository setup](#repository-setup)
    - [Build Chart documentation](#build-chart-documentation)
  - [Contributors](#contributors)
- [:mortar\_board: Research](#mortar_board-research)
  - [Cite this repository](#cite-this-repository)
- [:memo: License](#memo-license)
- [:handshake: Thanks](#handshake-thanks)

## :inbox_tray: Application stack

- [Fraunhofer IOSB FROST-Server](https://github.com/FraunhoferIOSB/FROST-Server):
  Server implementation of the OGC SensorThings API with HTTP and MQTT endpoint.

- [PostgreSQL](https://www.postgresql.org/)/[PostGIS](https://postgis.net/):
  Database backend for the FROST-Server. The chart offers two options:

  - Basic PostgreSQL/PostGIS chart based on the official
    [PostGIS Docker image](https://registry.hub.docker.com/r/postgis/postgis/).

  - High availability PostgreSQL with LoadBalancing using
    [Bitnami postgresql-ha](https://artifacthub.io/packages/helm/bitnami/postgresql-ha) chart.

- [Grafana](https://grafana.com/):
  Data visualization and dashboards.

- [Node-RED](https://nodered.org/):
  Wiring together hardware devices, APIs and online services.

- [caddy](https://caddyserver.com/):
  Webserver for hosting web content like documentations or landing pages for the deployment.

- [NGINX Ingress Controller](https://docs.nginx.com/nginx-ingress-controller/):
  Route traffic to the applications of the stack.
  Optional dependency, often provided in your cluster.

- [cert-manager](https://cert-manager.io/docs/):
  Automatic SSL certificate issuing from e.g. Let's Encrypt.
  Optional dependency, often provided in your cluster.

## :question: Getting started

To get this up an running in seconds, check out the [examples](examples). You will find examples for:

- [Basic example for a local cluster using Docker Desktop](examples/docker-desktop/)
- [Basic example for a local cluster using `minikube`](examples/minikube/)

## :page_with_curl: Documentation

The documentation of the chart is located in the chart directory:
[helm/charts](helm/charts)

The documentation for internal dependencies is located in their folders too:

- [FROST-Server](helm/charts/charts/frostweb)
- [Basic PostgreSQL/PostGIS](helm/charts/charts/frostdb)
- [Grafana](helm/charts/charts/grafana)
- [Node-RED](helm/charts/charts/nodered)
- [Caddy](helm/charts/charts/caddy)
- [certIssuer](helm/charts/charts/certIssuer)

External dependencies are documented here:

- [Bitnami HA PostgreSQL/PostGIS](https://artifacthub.io/packages/helm/bitnami/postgresql-ha)
- [ingress-nginx](https://kubernetes.github.io/ingress-nginx/)
- [cert-manager](https://cert-manager.io/docs/)

## :rocket: Usage

1. Get a fully-qualified domain name (FQDN) and configure it to point to
   the public IP address of the LoadBalancer service of your Nginx
   ingress controller.

2. Add and update Helm repo

   ```bash
   helm repo add iot-stack https://tum-gis.github.io/tum-gis-iot-stack-k8s
   helm repo update
   ```

3. Adapt settings according to your needs e.g. in [values.yml](helm/charts/values.yaml)
   or create a local `values.yml` to overwrite settings.
   Examples e.g. for a local testing deployment are are available in
   [examples](examples).
   [values.yml](helm/charts/values.yaml) is documented in [helm/charts](helm/charts).

4. Install stack

   ```bash
   helm install iot iot-stack/tum-gis-iot-stack-k8s \
     -n iot-stack --create-namespace \
     --atomic --wait \
     --values my-values.yml
   ```

## :hammer_and_wrench: Contributing

Bug fixes, issue reports and contributions are greatly appreciated.

### Repository setup

#### Build Chart documentation

The documentation of this chart is located in this repository in the
[helm/charts](helm/charts) folder and consists of Markdown files,
that are generated using
[norwoodj/helm-docs](https://github.com/norwoodj/helm-docs).
To keep the documentation in sync with the source files, it is recommended
to use [`pre-commit`](https://github.com/pre-commit/pre-commit) to automatically
update the docs with every commit.

To generate a markdown documentation for this chart
using [norwoodj/helm-docs](https://github.com/norwoodj/helm-docs)
run this from the repo root.

```shell
docker run --rm --volume "$PWD/helm/charts:/helm-docs" -u $(id -u) jnorwood/helm-docs:latest
```

### Contributors

<a href="https://github.com/tum-gis/tum-gis-iot-stack-k8s/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=tum-gis/tum-gis-iot-stack-k8s" />
</a>

## :mortar_board: Research

This chart was developed for the course
[Geo Sensor Networks and the Internet of Things](https://wiki.tum.de/display/geosensorweb).

### Cite this repository

To cite this repository, please use the DOI provided by [Zenodo](https://zenodo.org).
If you want to reference a specific release version of the software, click the badge
and navigate to the desired version on the page.

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.7759805.svg)](https://doi.org/10.5281/zenodo.7759805)

## :memo: License

This Helm chart is distributed under the Apache License 2.0. See [LICENSE](LICENSE) for more information.

## :handshake: Thanks

- [Fraunhofer IOSB](https://www.iosb.fraunhofer.de/de/projekte-produkte/frostserver.html) for their great implementation of the OGC SensorThingsAPI.
