local M = {}

M.disabled = {
  n = {
    ["<leader>h"] = "",
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

return M
