# Vue CLI Dockerfile

[![Docker Build Statu](https://img.shields.io/docker/build/mtpereira/vue-cli.svg?style=flat-square)]()

A Docker image for running the [Vue CLI
tool](https://github.com/vuejs/vue-cli) tool.

## How to use

You can find the image at [`docker.io/mtpereira/vue-cli`](https://hub.docker.com/r/mtpereira/vue-cli/).

Run it with `docker run --rm -it mtpereira/vue-cli __VUE_COMMAND__`.

For example, to create an
example project, run `docker run --rm -it mtpereira/vue-cli create example`.

To have this example
project on your filesystem, add a volume, like so: `docker run --rm -it -v $(pwd):/vue mtpereira/vue-cli create example`.
