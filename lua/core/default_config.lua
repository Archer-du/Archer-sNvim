local M = {}

M.options = {
  nvchad_branch = "v2.0",
}

M.ui = {
}

M.plugins = "" -- path i.e "custom.plugins", so make custom/plugins.lua file

M.lazy_nvim = require "plugins.configs.lazy_nvim" -- config for lazy.nvim startup options

M.mappings = require "core.mappings"

return M
