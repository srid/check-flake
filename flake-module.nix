{ self, lib, ... }:
{
  config = {
    perSystem = { config, self', pkgs, ... }: {
      packages.check =
        pkgs.runCommand "checks-combined"
          {
            checksss = builtins.attrValues self.checks.${system};
          } ''
          echo $checksss
          touch $out
        '';
    };
  };
}
