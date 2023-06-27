# Minecraft Server Docker Image
This repository contains a Docker image that allows you to easily deploy a Minecraft server and play custom maps with your friends. It simplifies the process of setting up and running a Minecraft server by providing a Dockerized environment.

## Prerequisites
Before using this Docker image, ensure that you have the following dependencies installed:

Docker: Install Docker
Docker Compose (optional): Install Docker Compose (if you prefer to use docker-compose)

## Getting Started
To get started with this Docker image, follow the steps below:

- Run the Docker container, specifying the required environment variables:
  
```bash
docker run -d -e PVP=true -e MAPURL=https://example.com/map.zip -e VERSION=1.20.1 -p 25565:25565 --name minecraft-server ghcr.io/enzbdn/mcservermap:latest
```
Replace the values of the environment variables (PVP, MAPURL, and VERSION) with your desired settings. Here's a brief explanation of each variable:

**PVP**: Set it to true to enable player versus player (PvP) combat, or set it to false to disable PvP.

**MAPURL**: Provide the URL where the custom map can be downloaded from. Make sure the map is in a compatible format (e.g., a .zip file).

**VERSION**: Specify the Minecraft version you want to use (e.g., 1.16.5).

Wait for the server to start, and then connect to it using your Minecraft client. You can connect by entering localhost as the server address.

- Docker Compose

Alternatively, you can use Docker Compose to simplify the deployment process. Follow these steps:

Edit the docker-compose.yml file in the repository root directory.

Update the values of the environment variables (PVP, MAPURL, and VERSION) with your desired settings.

Save the file and exit the editor.

Build and run the Docker containers using Docker Compose:

```bash
docker-compose up -d
```
This command will fetch the Docker image and start the container.

Connect to the server using your Minecraft client. Enter your server address.

## Additional Notes
If you want to make the Minecraft server accessible to others on your network or over the internet, you may need to configure port forwarding on your router/firewall. Forward incoming connections on port 25565 to the machine running the Docker container.

## Acknowledgments
By running this container, you agree to Mojang's EULA.