FROM nixos/nix

# RUN nix-channel --update

RUN nix-env -f '<nixpkgs>' \
  -iA xpilot-ng \
  -iA bloodspilot-server

# All communciation is via UDP, and the server needs public ports
# for initial connection (-contactPort) and a range of ports, one
# for each client (-clientPortStart/End).  Use ports that are
# exposed below only, e.g.,
#
#   xpilots -contactPort 15400 -clientPortStart 15401 -clientPortEnd 15499
EXPOSE 15345/udp
EXPOSE 15400-15999/udp

ENTRYPOINT [ "xpilot-ng-server" ]
CMD ["-contactPort", "15345", "-clientPortStart", "15400", "-clientPortEnd", "15499"]
