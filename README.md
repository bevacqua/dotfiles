# dotfiles

> These are my personal dotfiles, used to bootstrap and configure developer boxes

Sets up a bunch of tools and frameworks for you to hack on, including

Much needed requisites

- GraphicsMagick
- `git`, `hg`, also GitHub's [`hub`](http://hub.github.com/) CLI utility

Package managers!
    - RubyGems with the `gem` CLI
    - Python with the `pip` CLI
    - JavaScript with [`bower`](http://bower.io/), [`npm`](http://npmjs.org/), or [`component`](http://component.io/), your pick!

- Power Tools
    - [**Sublime Text 3**](http://www.sublimetext.com/3) with some defaults you can change at `st3/preferences`
    - `zsh`, courtesy of [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh "A community-driven framework for managing your zsh configuration")
    - Your shell gets a pretty awesome treatment (see screenshot below)
        - `git-flow` out the box
        - `zshconfig` alias to hack on settings
        - `open` alias to `xdg-open` on Ubuntu
        - A neat and unobtrusive `zsh` theme!

Niceties

- Every google web font gets installed in your box
- [VLC](http://www.videolan.org/vlc/index.html), you know you want it
- Application Launchers!
    - [gnome-do](https://launchpad.net/do) on Ubuntu
- Post It notes
    - [Sticky Notes](https://launchpad.net/indicator-stickynotes) on Ubuntu

Stuff

- MongoDB
- Node.js stuff: [`nvm`](https://github.com/creationix/nvm), [`node`](http://nodejs.org) <sub>(through `nvm`)</sub>, and [`npm`](http://npmjs.org/), [`nodemon`](https://github.com/remy/nodemon), and [`pm2`](https://github.com/Unitech/pm2)
- Front-end developer stuff: [`grunt`](http://gruntjs.com/), [`grunt-init`](https://github.com/gruntjs/grunt-init), [`eslint`](https://github.com/nzakas/eslint) and [`jshint`](http://www.jshint.com/)

Day-to-day communication and awesomeness

- Google Chrome
- HipChat
- Skype
- IRC Client
    - [`xchat`](https://apps.ubuntu.com/cat/applications/precise/xchat/) on Ubuntu
- Drawing apps
    - [Inkscape](http://inkscape.org/en/)
    - [Gimp](http://www.gimp.org/) on Ubuntu

Random things probably only I care about

- [heroku](https://toolbelt.heroku.com/) CLI tools
- The Amazon Web Services CLI, [aws-cli](http://aws.amazon.com/cli/)

### On Ubuntu Boxes

Install `zsh`, which requires a _reboot_.

````shell
sudo sh ./ubuntu/zsh.sh
````

After boot, install everything else.

```shell
sudo sh ./ubuntu.sh
```

Result!

![shell.png][1]

### Manual Steps

- Follow instructions on [ST3 site](https://sublime.wbond.net/installation#ST3) to install **Package Control**.
- Profit

# License

MIT

  [1]: https://raw.github.com/bevacqua/dotfiles/master/ubuntu/shell.png
