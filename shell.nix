{ pkgs ? import <nixpkgs> {} }:

with pkgs;
let
  nodejs = nodejs-14_x;
  args-for-node = { pkgs=pkgs; nodejs=nodejs; };
  node-pkg-markdown-table-cli = (callPackage .nix/node args-for-node).markdown-table-cli;
  node-pkg-parse-markdown-table-cli = (callPackage .nix/node args-for-node).parse-markdown-table-cli;
in
pkgs.mkShell {
  buildInputs = [
    yq-go
    jq
    dasel
    node-pkg-markdown-table-cli
    node-pkg-parse-markdown-table-cli
    bat
    glow
  ];
}
