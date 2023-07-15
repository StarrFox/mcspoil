{
  description = "wizspoil modpack";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
    flake-parts.url = "github:hercules-ci/flake-parts/";
    nix-systems.url = "github:nix-systems/default";
  };

  outputs = inputs @ {
    self,
    flake-parts,
    nix-systems,
    ...
  }:
    flake-parts.lib.mkFlake {inherit inputs;} {
      debug = true;
      systems = import nix-systems;
      perSystem = {
        pkgs,
        system,
        self',
        ...
      }: {
        devShells.default = pkgs.mkShell {
          name = "mcspoil";
          packages = with pkgs; [
            just
            alejandra
            packwiz
          ];
        };
      };
    };
}
