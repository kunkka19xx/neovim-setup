### Note:
- need Iterm because terminal can not represent right theme
- need set Nerd font for view icon, text, folder, ...
https://www.nerdfonts.com/font-downloads
- need install delve for debugging: `brew install delve`
- we need ripgrep for telescope live grep
```shell
brew install ripgrep
```
- we need wget to help mason download zip,.. from internet

```shell
brew install wget
```

- Mason heathcheck
```shell
:h mason-requirements
```

```shell
:checkhealth mason
```

create tmux config file 

```shell
touch ~/.tmux.conf
```

add setting to the file then active them

```shell
tmux source-file ~/.tmux.conf \;
```

clone tpm

```shell
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
