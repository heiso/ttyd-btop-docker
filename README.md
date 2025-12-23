# TTYD-BTOP-DOCKER

Simple docker image for exposing [btop](https://github.com/aristocratos/btop) on a webpage using [ttyd](https://github.com/tsl0922/ttyd)

# Run

`docker run --pid host -p 7681:7681 heiso/ttyd-btop:latest`

```
docker run --pid host -p 7681:7681 heiso/ttyd-btop:latest
│          │          │            │
│          │          │            └── heiso/ttyd-btop:latest
│          │          │                Docker image to run
│          │          │
│          │          └── -p 7681:7681
│          │              Map container port 7681 to host port 7681
│          │              (ttyd default web interface port)
│          │
│          └── --pid host
│              Share the host's process namespace with the container
│              (allows btop to see and monitor all host processes)
│
└── docker run
    Create and start a new container
```