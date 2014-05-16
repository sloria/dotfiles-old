# sloria does dotfiles

My dotfiles, forked from [holman/dotfiles](https://github.com/holman/dotfiles).

## prerequisites

- homebrew
- git
- zsh

## install

Run this:

```sh
git clone https://github.com/sloria/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

### sublime text

For now, Sublime Text preferences and package installation is manual. Just copy sublime3/Preferences.sublime-settings to your User settings.

## updating

To handle installation and updates, run

```sh
dot
```

Run this command occasionally to keep up to date.

## components

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
