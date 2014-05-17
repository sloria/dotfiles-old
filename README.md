# sloria's dotfiles

My dotfiles, forked from [holman/dotfiles](https://github.com/holman/dotfiles).

## neat features

- zsh configured with [prezto](https://github.com/sorin-ionescu/prezto).
- nice fonts for the terminal and coding.
- iterm2 themes.
- pluggable. Fork this. Remove what you don't use. Configure what you do use.

## prerequisites: Install these first

- homebrew
- git (install with homebrew)
- zsh (install with homebrew)

## install

Run this:

```sh
git clone https://github.com/sloria/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

This will setup all the symlinks and run all the `install.sh` scripts.

### sublime text 3

Anything in `sublime3/User` will get symlinked to your Sublime Text User directory. 

There is also an example Preferences file you can use.

### fonts

To install fonts on OSX, simply drag the `.ttf` files onto the Font Book application. 

### python

These dotfiles do *not* install python. This is because I prefer to use [Anaconda python](http://continuum.io/downloads). Installers are available here: http://continuum.io/downloads . I use the [miniconda](http://conda.pydata.org/miniconda.html#miniconda) distribution, but you can use the full installer if you like.

The `python` topic in these dotfiles will correctly set up your path for anaconda.

### iterm2 color themes

To import an iterm themes, open your iTerm2 preferences and go to your Profiles settings. In the color tab, click the Load preset dropdown and choose "Import".

## staying updated

To handle installation and updates, run

```sh
dot
```

This will run all `topic/install.sh` scripts.

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
