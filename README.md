# Hello World
This project provides "Hello World!" programs in multiple programming language along with reproducible environment to execute them (via Nix shellenv). 

## File Structure

There are at least 3 files for any programming languages in the corresponding folder`./{lang}`:

- `./{lang}/src` : folder that stores the source file.
- `./{lang}/shell.nix` : configuration for `nix-shell` command to create the shellenv.
- `./{lang}/execute.sh` : commands to execute the source program.

## Usage

### 1. Install Nix Package Manager

See https://github.com/NixOS/nix for instruction.

For Windows, using [NixOS-WSL](https://github.com/nix-community/NixOS-WSL) is highly recommended.

### 2. Run Commands

Run "Hello World!" program of a specific programming language, e.g. C++.

```
> cd ./C++ # Or any other language
# Create shellenv according to ./shell.nix
# Take some time to resolve required packages and download them
> nix-shell 
$ bash execute.sh
Hello World!
```

Or run ALL programs (Warning: require a lot of time and disk space) 

```
> bash execute-all.sh
# See ./output.txt
```

## Rules of Programming Language Selection

- The programming language should be acknowledged by Github(see [Github Language List](./github-language-list.txt)).
- Dependencies for the programming language should be available on Nix(Either in [Nixpkgs](https://search.nixos.org/packages) or have public flake available).
- The program should be able to run on local Linux system (e.g. languages for cloud platform or blockchain are not included).
- Backward compatibility not considered (e.g. Python3 instead of Python2, Lean4 instead of Lean3)

## Related

This project is inspired by https://github.com/leachim6/hello-world.