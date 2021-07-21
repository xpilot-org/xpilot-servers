FROM nixos/nix

# RUN nix-channel --update

RUN nix-env -f '<nixpkgs>' \
  -iA xpilot-ng \
  -iA bloodspilot-server

# default contactPort
EXPOSE 15345/udp

# also exposing/forwarding ports to communicate with each game client
# set -clientPortStart/End set to some part of this range
EXPOSE 15400-15999/udp

ENTRYPOINT [ "xpilot-ng-server" ]
