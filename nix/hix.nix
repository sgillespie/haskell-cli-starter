{ pkgs,
  ...
}: {
  name = "haskell-cli-starter";
  compiler-nix-name = "ghc902";

  crossPlatforms = p: pkgs.lib.optionals pkgs.stdenv.hostPlatform.isx86_64 ([
    p.mingwW64
  ] ++ pkgs.lib.optionals pkgs.stdenv.hostPlatform.isLinux [
    p.musl64
  ]);
}
