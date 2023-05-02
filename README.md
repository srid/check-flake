# check-flake

Add a `.#check` package for building all checks for the current system

## Why?

[Due to IFD](https://nixos.wiki/wiki/Haskell#IFD_and_Haskell), commands like `nix flake check` simply will not work on certain projects (like [Haskell](https://github.com/srid/haskell-flake) projects) whose flake supports multiple systems. For details, see https://github.com/NixOS/nix/issues/3843.

To work around this, this flake module will add package that wraps all the checks. You can then run the checks as:

```sh
nix build .#check --no-link  -L
```

## Alternative approaches

You should probably use one of the following instead of `check-flake`.

- `systems` as an (overridable) flake input: https://github.com/nix-systems/nix-systems
- https://github.com/srid/devour-flake
