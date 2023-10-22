
# My nvim environments 

## Nvim and vscode integration

Using a separate neovim installation with its own configs at [.vscode-config/init.vim](./.vscode-config/init.vim)

To install it correctly:

- Execute the [init.sh](./init.sh) which will download and initialize the repo.
- In VSpaceCode plugin packs, disable vscodevim plugin
- Install VSCodeNeovim plugin
- In user `settings.json`:

```json
...
"vscode-neovim.neovimInitVimPaths.linux": "<repo path>/.vscode-config/init.vim",
"vscode-neovim.neovimExecutablePaths.linux": "<repo path>/nvim-vscode/bin/nvim",
"vscode-neovim.useWSL": true,
...
```

Enjoy 😆
