## **Dotfile**
tmux, zellij, alacritty, shell, neovim config file

---
### **Neovim**
#### config file tree
``` shell
.
├── colors_bak
│   └── nord.vim
├── ftplugin
│   ├── go.lua
│   ├── javascript.lua
│   └── lua.lua
├── init.lua
├── lint
│   └── pylint.conf
├── lua
│   ├── core
│   │   ├── basic.lua
│   │   ├── global.lua
│   │   ├── init.lua
│   │   └── plug.lua
│   ├── dap
│   │   ├── cpp.lua
│   │   ├── go.lua
│   │   └── python.lua
│   ├── keymap
│   │   ├── bind.lua
│   │   └── init.lua
│   ├── lsp
│   │   ├── clangd.lua
│   │   ├── cssls.lua
│   │   ├── gopls.lua
│   │   ├── html.lua
│   │   ├── jsonls.lua
│   │   ├── pyright.lua
│   │   ├── sqls.lua
│   │   ├── sumneko_lua.lua
│   │   ├── tsserver.lua
│   │   ├── vuels.lua
│   │   └── zeta_note.lua
│   └── modules
│       ├── editor
│       │   ├── config.lua
│       │   └── plugins.lua
│       ├── lsp
│       │   ├── config.lua
│       │   └── plugins.lua
│       ├── remote
│       │   ├── config.lua
│       │   └── plugins.lua
│       ├── ui
│       │   ├── config.lua
│       │   └── plugins.lua
│       └── utils
│           ├── config.lua
│           └── plugins.lua
├── plugin
│   └── packer_compiled.lua
└── snippets
    ├── c.json
    ├── global.json
    └── go.json
```

|dirname|description|
|:-:|:-:|
|colors_bak|include some themes|
|ftplugin|include configuration with different types of files|
|init.lua|neovim initialized config file|
|lint|diagnosis config file|
|lua/core|some basic config file|
|lua/dap|commissioning config documents|
|lua/keymap|custom keymap|
|lua/lsp|lsp server config file|
|lua/modules|include some plugins config file|
|snippets|custom code snippets|

---

#### **Plugins**

##### **ui**
|gitHub address|plugin|description|
|:-:|:-:|:-:|

##### **editor**
|gitHub address|plugin|description|
|:-:|:-:|:-:|


##### **lsp**
|gitHub address|plugin|description|
|:-:|:-:|:-:|

##### **utils**
|gitHub address|plugin|description|
|:-:|:-:|:-:|

##### **remote**
|gitHub address|plugin|description|
|:-:|:-:|:-:|

