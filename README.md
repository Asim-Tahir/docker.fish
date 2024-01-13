<img src="https://cdn.rawgit.com/oh-my-fish/oh-my-fish/e4f1c2e0219a17e2c748b824004c8d0b38055c16/docs/logo.svg" align="left" width="192px" height="192px"/>
<img align="left" width="0" height="192px" hspace="10"/>

### `docker.fish`

> `Docker` plugin for [Oh My Fish][omf] and [Fisher][fisher],
> based loosely on the [Oh My Zsh][omz]'s [Docker Plugin][omz-docker-plugin]

[![MIT License](https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square)](/LICENSE)
[![Fish Shell v3.6.0](https://img.shields.io/badge/fish-v3.6.0-007EC7.svg?style=flat-square)](https://fishshell.com)
[![Oh My Fish Framework](https://img.shields.io/badge/Oh%20My%20Fish-Framework-007EC7.svg?style=flat-square)](https://www.github.com/oh-my-fish/oh-my-fish)

<br/>

## Install

[Oh My Fish][omf]:

```sh
omf install https://github.com/Asim-Tahir/docker.fish
```

[Fisher][fisher]:

```sh
fisher install Asim-Tahir/docker.fish
```

## Abbreviations Usage

After installing the [`docker.fish`][repo] plugin, can inspect the abbreviations with the following command:

```sh
abbr --show | grep dstopa
```

### Image

| Abbreviation | Command                      |
| ------------ | ---------------------------- |
| `dib`        | `docker image build`         |
| `dii`        | `docker image inspect`       |
| `dils`       | `docker image ls`            |
| `dis`        | `docker images`              |
| `dipu`       | `docker image push`          |
| `dirm`       | `docker image rm`            |
| `ddrmi`      | remove all unused images[^1] |
| `dit`        | `docker image tag`           |

### Container

| Abbreviation | Command                     |
| ------------ | --------------------------- |
| `dcin`       | `docker container inspect`  |
| `dcls`       | `docker container ls`       |
| `dclsa`      | `docker container ls -a`    |
| `dps`        | `docker ps`                 |
| `dpsa`       | `docker ps -a`              |
| `dlo`        | `docker container logs`     |
| `dpo`        | `docker container port`     |
| `dr`         | `docker container run`      |
| `drit`       | `docker container run -it`  |
| `drm`        | `docker container rm`       |
| `drm!`       | `docker container rm -f`    |
| `dst`        | `docker container start`    |
| `drs`        | `docker container restart`  |
| `dstp`       | `docker container stop`     |
| `dxc`        | `docker container exec`     |
| `dxcit`      | `docker container exec -it` |

### Network

| Abbreviation | Command                     |
| ------------ | --------------------------- |
| `dnc`        | `docker network create`     |
| `dncn`       | `docker network connect`    |
| `dndcn`      | `docker network disconnect` |
| `dni`        | `docker network inspect`    |
| `dnls`       | `docker network ls`         |
| `dnrm`       | `docker network rm`         |

### Volume

| Abbreviation | Command                 |
| ------------ | ----------------------- |
| `dvi`        | `docker volume inspect` |
| `dvls`       | `docker volume ls`      |
| `dvprune`    | `docker volume prune`   |

### Everything Else

| Abbreviation | Command                         |
| ------------ | ------------------------------- |
| `dpl`[^2]    | `docker pull`                   |
| `dbl`        | `docker build`                  |
| `dstopa`[^3] | stop all running containers[^4] |
| `dtop`       | `docker top`                    |

# Credit

Base structure heavily inspired from [`jhillyerd/plugin-git`](https://github.com/jhillyerd/plugin-git). Thanks for the amazing plugin.

# License

[MIT][license] © [Asim Tahir][author]

[author]: https://github.com/Asim-Tahir
[repo]: https://github.com/Asim-Tahir/docker.fish
[license]: https://opensource.org/licenses/MIT
[omz]: https://github.com/ohmyzsh/ohmyzsh
[omz-docker-plugin]: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/docker/
[omf]: https://github.com/oh-my-fish/oh-my-fish
[fisher]: https://github.com/jorgebucaran/fisher
[license-badge]: https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square

[^1]: `docker rmi (docker images --filter "dangling=true" -q --no-trunc)` command removes all dangling images, which are untagged images that are not referenced by any container.
[^2]: The original abbreviation in [`Oh My Zsh`][omz]'s [Docker plugin][omz-docker-plugin] for the `docker pull` command is [`dpu`](https://github.com/ohmyzsh/ohmyzsh/blob/7d5e12500a2ba0b575ffafcbb516568973528730/plugins/docker/docker.plugin.zsh#L19) but renamed as `dpl` is more meaningful.
[^3]: The original abbreviation in [`Oh My Zsh`][omz]'s [Docker plugin][omz-docker-plugin] for the `docker stop (docker ps -q)` command is [`dsta`](https://github.com/ohmyzsh/ohmyzsh/blob/7d5e12500a2ba0b575ffafcbb516568973528730/plugins/docker/docker.plugin.zsh#L26C7-L26C11) but renamed as `dstopa` is more meaningful.
[^4]: `docker stop (docker ps -q)` command stops all running containers.
