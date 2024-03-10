This docker image is built and pushed from travis. It does not contain any default configs or any
special startup scripts. This is to keep it simple and to not copy too much logic from the
official/supported Docker Images found at https://hub.docker.com/r/mergexpay/mergexd/

The image is mostly used for devops purposes, e.g. for testnet/devnet deployments. Regular users
should use the official images instead of this one.

**NOTE: Please update the image description at https://hub.docker.com/r/mergexpay/mergexd-develop/ when changing the above text**