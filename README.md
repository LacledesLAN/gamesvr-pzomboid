# Project Zomboid Dedicated Server in Docker

Project Zomboid is an open-world, isometric video game developed by independent developer The Indie Stone. The game is
set in the post-apocalyptic, zombie-infested exclusion zone of the fictional Knox Country (formerly Knox County),
Kentucky, United States, where the player is challenged to survive for as long as possible before inevitably dying.

The plot of Project Zomboid centers around the "Knox Event" which is conveyed through radio broadcasts and TV channels.
In Project Zomboid, the player aims to survive for as long as possible in an apocalyptic and zombie-ridden area around
the city of Louisville, Kentucky - referred to as 'Knox Country' - which has been quarantined by the government. The
player can choose their character's appearance, occupation, and traits before selecting to spawn within one of four
starting towns, the occupation that is chosen also will influence where exactly the character will spawn (e.g. a
firefighter has a higher chance of spawning in a fire station if the chosen town has one). On top of avoiding zombies,
the player has to manage their personal needs (such as hunger, stress, fatigue, and boredom) to stay alive through
resting, scavenging for supplies, and using survivalist techniques.

![Project Zomboid](https://raw.githubusercontent.com/LacledesLAN/gamesvr-pzomboid/master/.misc/pzomboid.jpg "Project Zomboid")

This repository is maintained by [Laclede's LAN](https://lacledeslan.com). Its contents are intended to be bare-bones
and used as a stock server. If any documentation is unclear or it has any issues please see
[CONTRIBUTING.md](./CONTRIBUTING.md).

## Linux

[![linux/amd64](https://github.com/LacledesLAN/gamesvr-pzomboid/actions/workflows/build-linux-image.yml/badge.svg)](https://github.com/LacledesLAN/gamesvr-pzomboid/actions/workflows/build-linux-image.yml)

### Download

```shell
docker pull lacledeslan/gamesvr-pzomboid;
```

### Run Self Tests

The image includes a test script that can be used to verify its contents. No changes or pull-requests will be accepted
to this repository if any tests fail.

```shell
docker run -it --rm lacledeslan/gamesvr-pzomboid ./ll-tests/gamesvr-pzomboid.sh;
```

## Getting Started with Game Servers in Docker

[Docker](https://docs.docker.com/) is an open-source project that bundles applications into lightweight, portable,
self-sufficient containers. For a crash course on running Dockerized game servers check out [Using Docker for Game
Servers](https://github.com/LacledesLAN/README.1ST/blob/master/GameServers/DockerAndGameServers.md). For tips, tricks,
and recommended tools for working with Laclede's LAN Dockerized game server repos see the guide for [Working with our
Game Server Repos](https://github.com/LacledesLAN/README.1ST/blob/master/GameServers/WorkingWithOurRepos.md). You can
also browse all of our other Dockerized game servers: [Laclede's LAN Game Servers
Directory](https://github.com/LacledesLAN/README.1ST/tree/master/GameServers).
