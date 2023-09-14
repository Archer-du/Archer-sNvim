--custom keymappings
--@Author: Archer
local M = {}

M.disabled = {
  n = {
    ["<leader>q"] = "",
    ["<leader>v"] = "",
    ["<C-n>"] = "",
  },
}

M.buffer = {
  n = {
    ["<leader>h"] = {"<cmd> split <CR>", "Split buffer horizontal"},
    ["<leader>v"] = {"<cmd> vsplit <CR>", "Split buffer vertical"},
  }
}

M.general = {
  n = {
    ["<Leader>w"] = { "<cmd> w <CR>", "Save file" },
    ["<Leader>q"] = { "<cmd> q <CR>", "Quit current buffer" },
  },
}

M.nvimTree = {
  n = {
    ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
  },
}

local opts = { noremap = true, silent = true }
vim.keymap.set('v', '<A-j>', ':MoveBlock(1)<CR>', opts)
vim.keymap.set('v', '<A-k>', ':MoveBlock(-1)<CR>', opts)

M.editing = {
    n = {
        ["<A-j>"] = {"<cmd> MoveLine 1 <CR>", "Move line down"},
        ["<A-k>"] = {"<cmd> MoveLine -1 <CR>", "Move line up"},
        ["<A-l>"] = {"<cmd> MoveWord 1 <CR>", "Move word right"},
        ["<A-h>"] = {"<cmd> MoveWord -1 <CR>", "Move word left"},
    },
    v = {
        ["<A-j>"] = {"", "Move block down"},
        ["<A-k>"] = {"", "Move block up"},
    }
}
return M
