# XPilot servers in Docker images

`compose up` starts these servers:

- `xpilots` - xpilot-ng - on port 2001

- `bloodspilot-server` - bloodspilot - on port 3001

Uses NixOS as these don't exist on Ubuntu/Debian anymore - xpilot-ng was last
seen on Ubuntu Bionic (18.04LTS).
