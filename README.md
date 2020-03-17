# alpine-nas

#### [alpine-x64-nas](https://hub.docker.com/r/forumi0721alpinex64/alpine-x64-nas/)
![Docker Image Version (tag latest semver)](https://img.shields.io/docker/v/forumi0721alpinex64/alpine-x64-nas/latest)
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/forumi0721alpinex64/alpine-x64-nas/latest)
![MicroBadger Layers (tag)](https://img.shields.io/microbadger/layers/forumi0721alpinex64/alpine-x64-nas/latest)
![Docker Pulls](https://img.shields.io/docker/pulls/forumi0721alpinex64/alpine-x64-nas)
![Docker Stars](https://img.shields.io/docker/stars/forumi0721alpinex64/alpine-x64-nas)



----------------------------------------
#### Description

* Distribution : [Alpine Linux](https://alpinelinux.org/)
* Architecture : x64
* Appplication : NAS
    - [openssh](https://www.openssh.com/) : OpenSSH is the premier connectivity tool for remote login with the SSH protocol.
	- [Samba](https://www.samba.org/) : Samba is the standard Windows interoperability suite of programs for Linux and Unix.
    - [ReadyMedia](https://sourceforge.net/projects/nas/) : ReadyMedia (formerly known as MiniDLNA) is a simple media server software, with the aim of being fully compliant with DLNA/UPnP-AV clients.
	- [Transmission](https://transmissionbt.com/) : Transmission is a cross-platform BitTorrent client.
	- [File Browser](https://github.com/filebrowser/filebrowser) : Web File Browser which can be used as a middleware or standalone app.



----------------------------------------
#### Run

```sh
docker run -d \
           --net=host \
           -p 8200:8200/tcp \
           -v /data:/data \
           -e FRIENDLY_NAME="DLNA Server" \
           -e MEDIA_DIR=/data \
           forumi0721alpine[ARCH]/alpine-[ARCH]-nas:latest
```



----------------------------------------
#### Usage

* Nothing to do. Just set the client.



----------------------------------------
#### Docker Options

| Option             | Description                                      |
|--------------------|--------------------------------------------------|
| -                  | -                                                |


#### Ports

| Port               | Description                                      |
|--------------------|--------------------------------------------------|
| 22/tcp             | Listen port for openssh                          |
| 137/udp            | Listen port for samba                            |
| 138/udp            | Listen port for samba                            |
| 139/tcp            | Listen port for samba                            |
| 445/tcp            | Listen port for samba                            |
| 8200/tcp           | Listen port for minidlna                         |
| 9091/tcp           | Listen port for transmission                     |
| 51413/tcp          | Listen port for transmission                     |
| 51413/udp          | Listen port for transmission                     |
| 8080/tcp           | Listen port for filebrowser                      |


#### Volumes

| Volume             | Description                                      |
|--------------------|--------------------------------------------------|
| /conf.d            | Persisitent config                               |
| /data              | Media directory                                  |


#### Environment Variables

| ENV                | Description                                      |
|--------------------|--------------------------------------------------|
| RUN_USER_NAME      | Login username (default : forumi0721)            |
| RUN_USER_PASSWD    | Login password (default : passwd)                |
| RUN_USER_EPASSWD   | Login password (base64)                          |
| RUN_USER_UID       | Login user uid (default : 1000)                  |
| RUN_USER_GID       | Login user gid (default : 100)                   |
| NETBIOS_NAME       | Samba NetBIOS name (default : SAMBA)             |
| WORKGROUP          | Samba workgroup name (default : WORKGROUP)       |
| SAMBA_SHARE        | Samba share directory (default : /data)          |
| FRIENDLY_NAME      | the name that shows up on your clients. (default : DLNA Server) |
| MEDIA_DIR          | Directory you want scanned. (default : /data)    |
| NETWORK_INTERFACE  | Network interface for broadcast                  |
| TR_DOWNLOAD_DIR    | Download directory (default : /data)             |
| TR_BLOCKLIST_URL   | Block list url                                   |
| TR_RATIO_LIMIT     | Seed ratio limit                                 |
| TR_RPC_WHITELIST   | RPC white list                                   |
| TR_SPEED_LIMIT_DOWN| Download limit                                   |
| TR_SPEED_LIMIT_UP  | Upload limite                                    |
| TR_PEER_PORT       | Peer port                                        |

