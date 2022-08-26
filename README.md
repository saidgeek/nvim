# My neovim config

## Required installs

### Install Packer plugins manager

#### Linux or Mac

```shell
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

#### Windows

```shell
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
```
### Install `zig` compiler on windows for use Tree-setter

```shell
scoop install zig
```
> info this: [https://github.com/nvim-treesitter/nvim-treesitter/wiki/Windows-support](https://github.com/nvim-treesitter/nvim-treesitter/wiki/Windows-support)
