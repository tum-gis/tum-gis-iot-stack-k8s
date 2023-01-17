<h1 align="center">TUM-GIS IoT Stack for Kubernetes</h1>

<p align="center">
    <em>an application stack for managing and visualizing sensor data with open standards and tools using <br/><a title="Open Geospatial Consortium Homepage" href="https://www.ogc.org/standards/sensorthings">OGC SensorThingsAPI</a> in a Kubernetes cluster</em>
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
</p>

**Warning**:
> This repository is an early stage of development. Use it at your own risk!

## :inbox_tray: Components

* [Fraunhofer IOSB FROST-Server](https://github.com/FraunhoferIOSB/FROST-Server)
  * Server implementation of the OGC SensorThings API
* [Grafana](https://grafana.com/)
  * Dashboards for your data
* [Node-RED](https://nodered.org/)
  * Wiring together hardware devices, APIs and online services
* [caddy](https://caddyserver.com/)
  * Caddy webserver for hosting web content like documentations or landing pages for the stack.
* [NGINX Ingress Controller](https://docs.nginx.com/nginx-ingress-controller/)
  * Route traffic to the applications of the stack
  * Optional dependency, usually not required.
* [cert-manager](https://cert-manager.io/docs/)
  * Automatic SSL certificate issuing from e.g. Let's Encrypt
  * Optional dependency, usually not required.

## :question: Getting started

To get this up an running in seconds, check out the [examples](examples). You will find examples for:

* [Basic example for a local cluster using Docker Desktop](examples/docker-desktop/)
* [Basic example for a local cluster using `minikube`](examples/minikube/)

The documentation for this helm chart is available in [helm/charts](helm/charts).

## :rocket: Usage

1. Get a fully-qualified domain name (FQDN) and configure it to point to the public IP address of
   the LoadBalancer service of your Nginx ingress controller.

2. Add and update Helm repo

   ```console
   helm repo add iot-stack https://tum-gis.github.io/tum-gis-iot-stack-k8s
   helm repo update
   ```

3. Adapt settings according to your needs e.g. in [values.yml](helm/charts/values.yaml) or create
   a local `values.yml` to overwrite settings. Examples e.g. for a local testing deplayment are
   are available in [examples](examples). [values.yml](helm/charts/values.yaml) is documented in
   [helm/charts](helm/charts).

4. Install stack

   ```console
   helm install my-iot-stack iot-stack/tum-gis-iot-stack-k8s \
     -n iot-stack --create-namespace \
     --atomic --wait \
     --values my-values.yml
   ```

## :blue_book: Documentation

The detailed documentation

### Build Chart documentation

To generate a markdown documentation for this chart
using [norwoodj/helm-docs](https://github.com/norwoodj/helm-docs)
run this from the repo root.

```shell
docker run --rm --volume "$PWD/helm/charts:/helm-docs" -u $(id -u) jnorwood/helm-docs:latest
```

## :hammer_and_wrench: Contributing

Bug fixes, issue reports and contributions are greatly appreciated.

## Contributors

<a href="https://github.com/tum-gis/tum-gis-iot-stack-k8s/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=tum-gis/tum-gis-iot-stack-k8s" />
</a>

## :mortar_board: Research

## :memo: License

This Helm chart is distributed under the Apache License 2.0. See [LICENSE](LICENSE) for more information.

## :handshake: Thanks
