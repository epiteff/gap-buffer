let
  config = {
    packageOverrides = pkgs: {
      haskellPackages = pkgs.haskellPackages.override {
        overrides = self: super: rec {
          gap-buffer =
            self.callPackage ./gap-buffer.nix { };
        };
      };
    };
  };

  pkgs = import <nixpkgs> { inherit config; };
in {
  inherit (pkgs.haskellPackages) gap-buffer;
}
