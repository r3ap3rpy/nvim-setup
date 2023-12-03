### Welcom

This repository holds my **init.vim** setup. This is the init file of the [nvim](https://neovim.io/) text editor.

In order to use it on windows system issue the following command.

``` Powershell
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force
```

On linux system issue the following command.

``` bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

Then copy the **init.vim** content to the appropriate location.

Start nvim and issue the following commands.

``` bash
:PlugInstall
:CocInstall coc-pyright
```

Enjoy.

![nvim](/images/nvim.JPG)