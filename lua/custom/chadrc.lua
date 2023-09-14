
local g = vim.g

g.indentLine_enabled = 1
-- set indent size to 4 spaces
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

---@type ChadrcConfig
local M = {}

M.plugins = "custom.plugins"


M.ui = {
  theme = "tokyodark",

  transparency = false,

  telescope = { style = "bordered" }, -- borderless / bordered

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
      { "  Bookmarks", "<leader>ma", "Telescope marks" },
      { "  Themes", "<leader>th", "Telescope themes" },
      { "  Mappings", "<leader>ch", "NvCheatsheet" },
    },
  },
}


M.mappings = require "custom.mappings"

return M
