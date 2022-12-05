# Ruthen1um's dotfiles

## Installation

### Requirements

- `git` utility
- `stow` utility

### Steps

1. Clone [this repository](https://github.com/Ruthen1um/dotfiles) somewhere (`.dotfiles` used as an example):
```shell
git clone https://github.com/Ruthen1um/dotfiles.git .dotfiles
```

2. `cd` to the cloned repo:
```shell
cd .dotfiles
```

3. Install dotfiles in your `$HOME` using `stow`:
```shell
stow --target="$HOME" .
```

**NOTE**: `.` is a wildcard for everything in the stow directory
