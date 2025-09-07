{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  buildInputs = with pkgs; [
    ghc
    cabal-install
    zlib
  ];
  
  # This helps Stack find system libraries
  LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath [ pkgs.zlib ];
}
