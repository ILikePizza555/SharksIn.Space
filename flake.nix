{
  desscription = "The website source code for sharksin.space";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-21.05";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {self, nixpkgs, flake-utils}:
    flake-utils.lib.eachDefaultSystem (system: {
      defaultPackage = stdenv.mkDerivation {
        name = "sharksinspace-website";
        src = ./.;
        buildInputs = [ hugo ];
      };
    });
}
