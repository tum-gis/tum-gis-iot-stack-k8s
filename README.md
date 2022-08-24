<h1 align="center">IoT Stack for Kubernetes</h1>

<p align="center">
    <em>an application stack for managing sensor data with open standards and tools using <br/><a title="Open Geospatial Consortium Homepage" href="https://www.ogc.org/standards/sensorthings">OGC SensorThingsAPI Standard</a></em>
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


> This repository is an early stage of development.


## :rocket: Usage

1. Add and update Helm repo

   ```console
   helm repo add iot-stack https://tum-gis.github.io/tum-gis-iot-stack-k8s
   helm repo update
   ```

2. Adapt settings according to you needs e.g. in [values.yml](helm/charts/values.yaml) or create
   a local `values.yml` to overwrite settings. A basic configuration assuming
   Nginx Ingress and Cert-Manager are already installed and properly configured could look like this:
   `my-values.yml:`

   ```yaml
   name: iot-stack

   cert-manager:
     enabled: false

   ingress-nginx:
     enabled: false

   frostdb:
     enabled: true
     persistence:
       capacity: 4Gi

   frostweb:
     enabled: true
     replicaCount: 1


   global:
     fqdn: www.example.de
     ingress:
       certManager:
         issuer: letsencrypt-staging
     ssl:
       adminEMail: user@example.de

   grafana:
     replicaCount: 1

   grafana7:
     enabled: true
     nodeSelector:
     replicaCount: 1

   nodered:
     enabled: true
     replicaCount: 1
     persistence:
       enabled: true
   ```

3. Install stack

   ```console
   helm install my-iot-stack iot-stack/tum-gis-iot-stack-k8s \
     -n iot-stack --create-namespace \
     --atomic --wait \
     --values my-values.yml
   ```

## :inbox_tray: Datasets

## :construction_worker: Building

## :hammer_and_wrench: Contributing

Bug fixes, issue reports and contributions are greatly appreciated.

## :mortar_board: Research

## :memo: License

This Helm chart is distributed under the Apache License 2.0. See [LICENSE](LICENSE) for more information.

## :handshake: Thanks
