# KNetKit

This image contains basic network tools for troubleshooting network issues. It is based on Alpine Linux and far from being complete.

I created this image to be used in Kubernetes clusters when testing network connectivity from pods. You can find the helm chart that deploys KNetKit to a cluster [here](https://github.com/lonefreak/knetkit-helm).

## Usage

```bash
docker run -it --rm lonefreak/knetkit
```

## Buildig and pushing

```bash
export DOCKERHUB_USER=<your-username>
make build
make login
make publish
```

