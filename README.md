# afmt.nvim
An extremely minimal code formatter for Neovim.

## Installation
Install with your preferred package manager:

## [plum.nvim](https://github.com/9yokuro/plum.nvim)
```lua
require("plum").setup({
    "9yokuro/afmt.nvim"
})
```

## Examples
```lua
require("afmt").setup({
    {
        pattern = "*.go",
        command = "go fmt",
    },

    {
        pattern = "*.lua",
        command = "stylua",
    },
})
```
