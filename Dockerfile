FROM nixos/nix

# RUN nix-channel --update

RUN nix-env -f '<nixpkgs>' \
  -iA xpilot-ng \
  -iA bloodspilot-server

ENTRYPOINT [ "xpilot-ng-server" ]
