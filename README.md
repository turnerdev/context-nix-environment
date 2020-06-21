# ConTeXt development environment for nix 

[Nix-shell](https://nixos.wiki/wiki/Development_environment_with_nix-shell) based development environment for [ConTeXt](https://wiki.contextgarden.net).

## Installation

Create a project directory and clone repo

```bash
mkdir new-project
cd new-project
git clone https://github.com/turnerdev/context-nix-environment.git .
```

## Usage

Enter a nix-shell (for NixOS, consider [lorri](https://github.com/target/lorri)):
```bash
nix-shell
```

To automatically recompile PDFs when .tex files are modified:

```bash
./watch
```

To preview output:

```
mupdf out/document.pdf
```

`watch` will automatically refresh mupdf output on compilation.

## License
[MIT](https://choosealicense.com/licenses/mit/)
