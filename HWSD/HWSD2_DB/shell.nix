{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.python313
    pkgs.python313Packages.pip
    pkgs.python313Packages.virtualenv

    # Heavy C-extension deps → MUST come from Nix
    pkgs.python313Packages.numpy
    pkgs.python313Packages.pandas
pkgs.python313Packages.psycopg

    # Runtime libs
    pkgs.stdenv.cc.cc.lib
    pkgs.gcc
  pkgs.postgresql
  pkgs.postgresql.dev
  ];
}

