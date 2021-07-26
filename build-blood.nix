# Not currently used

{ pkgs ? import <nixpkgs> { system = "x86_64-linux"; } }:

pkgs.dockerTools.buildImage {
  name = "bloodspilot-server";
  tag = "latest";
  created = "now";
  contents = [ pkgs.bloodspilot-server ];
  config = {
    Entrypoint = [ "${pkgs.bloodspilot-server}/bin/xpilots" ];
  };
}
