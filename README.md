# Left 4 Dead 2 Docker Image

This Docker image allows you to run a Left 4 Dead 2 in a containerized environment.

## Build the Image

To build the Docker image, use the following command:

```
docker build -t l4d2-server:latest .
```

This command will build the image based on the Dockerfile in the current directory and tag it as `l4d2-server:latest`.

## Run the Container

To run the container, use the following command:

```
docker run -p 27025:27015/tcp -p 27025:27015/udp --name l4d2-server l4d2-server:latest
```

This command will start a container named `l4d2-server` based on the `l4d2-server:latest` image. It maps the TCP and UDP ports from the host to the container, allowing connections to the Left 4 Dead 2.

Make sure that the required ports (27025 TCP and UDP) are available on the host system before running the container.

Note: You can adjust the host port numbers (`27025` in the example) if necessary. Ensure that the ports are not already in use by other processes on the host.

After running the container, the Left 4 Dead 2 should be accessible through the specified ports on the host machine.