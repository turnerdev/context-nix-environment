{ pkgs     ? import <nixpkgs> {}
, document ? "document.tex"
}:

with pkgs; 

let
  deps = [ mupdf
           texlive.combined.scheme-medium 
           inotify-tools
         ];
  env = buildEnv{
    name = "build-environment";
    paths = deps;
  };
in
stdenv.mkDerivation rec {
  name = "context-environment";
  buildInputs = [ env ];
  shellHook = ''
  '';
}
