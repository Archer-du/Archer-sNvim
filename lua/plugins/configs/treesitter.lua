local options = {
    ensure_installed = { "lua", "c", "c_sharp", "cpp", "python", "rust", "cmake" },

    highlight = {
        enable = true,
        use_languagetree = true,
    },

    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "<C-TAB>",
            node_incremental = "<C-I>",
            node_decremental = "<C-O>",
            scope_incremental = "<C-C>"
        }
    },

    -- use = to format
    indent = { enable = true },
}

return options
