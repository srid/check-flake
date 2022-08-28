# check-flake
Add a `.#check` package for building all checks for the current system

## Why?

[Due to IFD](https://nixos.wiki/wiki/Haskell#IFD_and_Haskell), commands like `nix flake check` simply will not work on certain projects (like [Haskell](https://github.com/srid/haskell-flake) projects). To work around this, this flake module will add package that wraps all the checks. You can then run the checks as:

```sh
nix build .#check --no-link  -L
```

