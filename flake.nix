{
  description = "A `flake-parts` module to provide `.#check` package wrapping all checks";
  outputs = { self, ... }: {
    flakeModule = ./flake-module.nix;
  };
}
