# Docker-svFSI
This Dockerfile will build `svFSI` executable from the most recent source code in the main repository. Assuming you already have [Docker](https://docs.docker.com/get-docker/) installed, please follow the steps below to run `svFSI`.

1. Clone the current repository

   ```bash
   git clone https://github.com/CZHU20/Docker-svFSI
   cd Docker-svFSI
   ```

2. Build Docker image.

   ```bash
   docker build -t svfsi-image .
   ```

   This may take a while. Afterwards, run the command `docker images`, and you should see `svfsi-image`.

3. Run the container in interactive mode

   ```bash
   docker container run -it --rm --name svfsi-demo svfsi-image
   ```

​		This will open a shell prompt and you can proceed as usual.