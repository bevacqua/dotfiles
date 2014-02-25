# dotfiles

> These are my personal dotfiles, used to bootstrap and configure developer boxes

For a complete feature list, check out [FEATURES.md][1]

# Install On Ubuntu

Install `zsh`, which requires a _reboot_.

````shell
sudo sh ./ubuntu/zsh.sh
````

After boot, install everything else.

```shell
sudo sh ./ubuntu.sh
```

![shell.png][1]

# Install On OSX

```shell
sudo sh ./osx.sh
```

### Manual Steps

- Follow instructions on [ST3 site](https://sublime.wbond.net/installation#ST3) to install **Package Control**

### Customization

- Anything placed in `~/.zshrc.user` will run on every shell instance

# License

MIT

  [1]: https://raw.github.com/bevacqua/dotfiles/master/ubuntu/shell.png


Mac (some day)

- https://github.com/sindresorhus/quick-look-plugins

[1]: FEATURES.md
