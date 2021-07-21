FROM nixos/nix

# RUN nix-channel --update

RUN nix-env -f '<nixpkgs>' \
  -iA xpilot-ng \
  -iA bloodspilot-server

EXPOSE 15345-15999

ENTRYPOINT [ "xpilot-ng-server" ]
