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
