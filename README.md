# sloria's dotfiles

My dotfiles, forked from [holman/dotfiles](https://github.com/holman/dotfiles).

## a few neat features

- zsh configured with [prezto](https://github.com/sorin-ionescu/prezto).
- nice fonts for the terminal and coding.
- iterm2 themes.
- anaconda python
- Mac Desktop Applications installed with [homebrew cask](https://github.com/caskroom/homebrew-cask)
- a tmux.conf that's pretty neat
- pluggable. Everything is optional. Fork this. Remove what you don't use. Configure what you do use.

## prerequisites: Install these first

- homebrew
- git (install with homebrew)
- zsh (install with homebrew)

## components

All configuration is done in `~/.dotfiles`. Files are separated into *topic* directories with a number of special files.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.
- **topic/install.sh**: Topic-specific installation script. These will execute when you run `script/bootstrap` or `script/install` or `dot`

You can also put any secret stuff in `~/.localrc`. This file will be executed by `~/.zshrc`

### special notes

**homebrew and homebrew-cask**

Put any common packages and applications you want installed in `homebrew/Brewfile` and `homebrew-cask/Caskfile`. These will be installed when you run the bootstrap or `dot` scripts.

**sublime text 3**

Anything in `sublime3/User` will get symlinked to your Sublime Text User directory. 

There is also an example Preferences file you can use.

**fonts**

To install fonts on OSX, simply drag the `.ttf` files onto the Font Book application. 

**python**

The `python` topic installs the [Anaconda Python distribution](https://store.continuum.io/cshop/anaconda/) using the [miniconda](http://conda.pydata.org/miniconda.html) installer. The installation is entirely self-contained, and lives at `~/miniconda`.

**iterm2 color themes**

To import an iterm themes, open your iTerm2 preferences and go to your Profiles settings. In the color tab, click the Load preset dropdown and choose "Import".

## install

Run this:

```sh
git clone https://github.com/sloria/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

This will setup all the symlinks and run all the `install.sh` scripts.

## staying updated

To handle installation and updates, run

```sh
dot
```

This will run all `topic/install.sh` scripts.

