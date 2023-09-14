-- custom plugins

local plugins = {
  -- In order to modify the `lspconfig` configuration:
    {
        "neovim/nvim-lspconfig",
         config = function()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
         end,
    },
    {
        "fedepujol/move.nvim",
        lazy = false,
    },
    {
        "wakatime/vim-wakatime",
        lazy = false,
    },
    {
       "williamboman/mason.nvim",
       opts = {
              ensure_installed = {
                "lua-language-server",
                "pyright",
                "clangd",
                "csharp-language-server",
                "cmake-language-server",
              },
        },
    }
}

return plugins
