# NoIP-DUC

## Introduction
This repository contains the necessary instructions to set up a Dockerized application for interacting with a No-IP service. By following the steps outlined in this readme, you will be able to quickly deploy and run the application on your local machine.

## Prerequisites
Before proceeding, ensure that you have the following prerequisites installed on your system:
- Docker
- Docker Compose

### Docker Compose Environment Variables
Open the `docker-compose.yml` file and locate the `environment` section. You need to add the following environment variables to this section:

- `NOIP_USERNAME`: Your No-IP account email address.
- `NOIP_PASSWORD`: Your No-IP account password.
- `NOIP_HOSTNAMES`: A comma-separated list of the hostnames.

## Deployment
Once you have set up the configuration, follow the steps below to deploy the application:

1. Open a terminal or command prompt.
2. Navigate to the repository directory.
3. Run the following command to start the Docker containers: `docker compose up`
