# eb-cli

## Attention: This image should be used only for DEVELOPMENT AND TESTING purporses, as it uses root installation which can cause security issues.

Usage Example:
``` bash
docker build -t eb-cli .
docker run --rm -it --volume ~/.aws:/root/.aws --name eb-cli eb-cli bash
eb --version
```
