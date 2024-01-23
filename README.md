[![Odoo 17](https://img.shields.io/badge/Odoo-17-green)](https://www.odoo.com/)

# Odoo Dockerized Setup

This repository provides a Dockerized setup for running Odoo. It includes a Makefile with helpful commands for managing the Odoo environment. Follow the instructions below to set up and manage your Odoo instance.

## Prerequisites

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Initial Configuration

To set up the initial configuration, run the following command:

```bash
make initial-config
```

This will create necessary directories and copy configuration files.

## Build and Start Odoo

To build and start the Odoo containers, run:

```bash
make build
```

This command will use Docker Compose to build and start the Odoo containers in detached mode.

## Clean Up

To stop and remove the Odoo containers along with the volumes, run:

```bash
make clean
```

This command stops and removes the containers and their associated volumes.

## Stop and Start

You can stop and start the Odoo containers using the following commands:

```bash
make stop  # Stop Odoo containers
make start  # Start Odoo containers
```

## Restart

To restart the Odoo containers, run:

```bash
make restart
```

## View Logs

To view the logs of the Odoo container, run:

```bash
make logs
```

This command will display the logs of the Odoo container in a follow mode.

Feel free to customize the provided Makefile and configuration files based on your requirements.
