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

1. Add Helm repo `helm repo add iot-stack https://tum-gis.github.io/tum-gis-iot-stack-k8s`
2. Update Helm repo `helm repo update`
3. Adapt settings according to you needs e.g. in [values.yml](helm/charts/values.yaml)
4. Install stack

   ```console
   helm install my-iot-stack iot-stack/tum-gis-iot-stack-k8s \
     -n iot-stack --create-namespace --atomic
   ```

## :inbox_tray: Datasets

## :construction_worker: Building

## :hammer_and_wrench: Contributing

Bug fixes, issue reports and contributions are greatly appreciated.

## :mortar_board: Research

## :memo: License

This Helm chart is distributed under the Apache License 2.0. See [LICENSE](LICENSE) for more information.

## :handshake: Thanks
