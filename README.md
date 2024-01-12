# eb-cli

Usage Example:
``` bash
docker build -t eb-cli .
docker run --rm -it --volume ~/.aws:/root/.aws --name eb-cli eb-cli bash
eb --version
```
