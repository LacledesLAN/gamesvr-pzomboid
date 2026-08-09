# Project Zomboid Dedicated Server in Docker

Project Zomboid is an open-world, isometric survival game set in the zombie-infested exclusion zone of fictional Knox
Country, Kentucky. Players customize a character's appearance, occupation, and traits before spawning in one of four
towns; their occupation can influence the starting location. To survive as long as possible, they must avoid zombies,
manage needs such as hunger and fatigue, and scavenge for supplies.

![Project Zomboid](https://raw.githubusercontent.com/LacledesLAN/gamesvr-pzomboid/refs/heads/main/.documentation/images/banner-pzomboid.jpg "Project Zomboid")

This repository is maintained by [Laclede's LAN](https://lacledeslan.com). Its contents are intended to be bare-bones
and used as a stock server. If any documentation is unclear or it has any issues please see
[CONTRIBUTING.md](./CONTRIBUTING.md).

## Linux

[![linux/amd64](https://github.com/LacledesLAN/gamesvr-pzomboid/actions/workflows/build-linux-image.yml/badge.svg)](https://github.com/LacledesLAN/gamesvr-pzomboid/actions/workflows/build-linux-image.yml)

### Download

```shell
docker pull lacledeslan/gamesvr-pzomboid;
```

### Run Simple, Interactive Server

```shell
docker run -it --rm --net=host lacledeslan/gamesvr-pzomboid /app/start-server.sh -servername my-server -adminpassword tk421 -steamvac false;
```

### Run Self Tests

The projects includes a test script that can be used to verify built docker images. No changes or pull-requests will be accepted to this repository if any tests fail.

```shell
./tests/gamesvr-pzomboid.sh lacledeslan/gamesvr-pzomboid /app/start-server.sh -adminpassword tk421 -steamvac false;
```

## Getting Started with Game Servers in Docker

[Docker](https://docs.docker.com/) is an open-source project that bundles applications into lightweight, portable,
self-sufficient containers. For a crash course on running Dockerized game servers check out [Using Docker for Game
Servers](https://github.com/LacledesLAN/README.1ST/blob/main/GameServers/DockerAndGameServers.md). For tips, tricks,
and recommended tools for working with Laclede's LAN Dockerized game server repos see the guide for [Working with our
Game Server Repos](https://github.com/LacledesLAN/README.1ST/blob/main/GameServers/WorkingWithOurRepos.md). You can
also browse all of our other Dockerized game servers: [Laclede's LAN Game Servers
Directory](https://github.com/LacledesLAN/README.1ST/tree/main/GameServers).
