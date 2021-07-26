# Not currently used

{ pkgs ? import <nixpkgs> { system = "x86_64-linux"; } }:

pkgs.dockerTools.buildImage {
  name = "xpilot-ng";
  tag = "latest";
  created = "now";
  # contents = pkgs.xpilot-ng;
  contents = [ pkgs.xpilot-ng ];
  config = {
    Entrypoint = [ "${pkgs.xpilot-ng}/bin/xpilot-ng-server" ];
    # Cmd = [ "${pkgs.xpilot-ng}/bin/xpilot-ng-server" ];
  };
}
