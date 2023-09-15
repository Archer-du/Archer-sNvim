
local g = vim.g

g.indentLine_enabled = 1
-- set indent size to 4 spaces
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

local opts = { noremap = true, silent = true }
vim.keymap.set('v', '<A-j>', ':MoveBlock(1)<CR>', opts)
vim.keymap.set('v', '<A-k>', ':MoveBlock(-1)<CR>', opts)


---@type ChadrcConfig
local M = {}

M.plugins = "custom.plugins"

M.ui = {
   ------------------------------- base46 -------------------------------------
  changed_themes = {},
  theme_toggle = { "onedark", "one_light" },

  lsp_semantic_tokens = false, -- needs nvim v0.9, just adds highlight groups for lsp semantic tokens
  extended_integrations = {}, -- these aren't compiled by default, ex: "alpha", "notify"

  -- hl = highlights
  hl_add = {},
  hl_override ={
    NvDashAscii = {
      bg ="none",
      fg ="blue"
    },
    NvDashButtons ={
      bg ="none",
      fg ="light_grey"
    }
  },

  theme = "tokyodark",
  transparency = false,

  cmp = {
    icons = true,
    lspkind_text = true,
    style = "default", -- default/flat_light/flat_dark/atom/atom_colored
    border_color = "white_fg", -- only applicable for "default" style, use color names from base30 variables
    selected_item_bg = "colored", -- colored / simple
  },

  telescope = { style = "bordered" }, -- borderless / bordered

  statusline = {
    theme = "default", -- default/vscode/vscode_colored/minimal
    separator_style = "default",
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    overriden_modules = nil,
  },

  -- lazyload it when there are 1+ buffers
  tabufline = {
    show_numbers = false,
    enabled = true,
    lazyload = true,
    overriden_modules = nil,
  },

  cheatsheet = { theme = "grid" }, -- simple/grid

  lsp = {
    -- show function signatures i.e args as you type
    signature = {
      disabled = false,
      silent = true, -- silences 'no signature help available' message from appearing
    },
  },

-- nvdash (dashboard)
  nvdash = {
    load_on_startup = true,
    header = {
      "     _                    _                   ",
      "    / \\     _ __    ___  | |__     ___   _ __ ",
      "   / _ \\   | '__|  / __| | '_ \\   / _ \\ | '__|",
      "  / ___ \\  | |    | (__  | | | | |  __/ | |   ",
      " /_/   \\_\\ |_|     \\___| |_| |_|  \\___| |_|   ",
    },

    buttons = {
      { "  Find File", "<leader>ff", "Telescope find_files" },
      { "󰈚  Recent Files", "<leader>fo", "Telescope oldfiles" },
      { "󰈭  Find Word", "<leader>fw", "Telescope live_grep" },
      { "  Bookmarks", "<leader>fm", "Telescope marks" },
      { "  Themes", "<leader>ft", "Telescope themes" },
      { "  Mappings", "<leader>ch", "NvCheatsheet" },
    },
  },
}

return M
