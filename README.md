# comp-vnc
A collection of scripts and configuration files for setting up VNC capable instances on Google Compute Engine.

To startup the VNC server:

```shell
vncserver :1 -depth 24 -geometry 1280x800
```

To kill the VNC server:

```shell
vncserver -kill :1
```

To start a VNC SSH encrypted connection:

```shell
ssh -L 5902:localhost:5901 x.x.x.x
```

Connect to the VNC server over localhost:5902
