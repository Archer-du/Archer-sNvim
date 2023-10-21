
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
    hl_add = {
    },
    hl_override ={
        -- syntax
        Boolean = {
            fg = "orange"
        },
        Character = {
            fg = "orange"
        },
        Constant = {
            fg = "orange"
        },
        -- Conditional = {
        --     fg = theme.base0E,
        -- },
        Define = {
            fg = "blue",
            sp = "none",
        },
        Float = {
            fg = "cyan",
        },
        Function = {
            fg = "yellow"
        },
        --
        -- Identifier = {
        --     fg = "red",
        --     sp = "none",
        -- },
        --
        Include = {
            fg = "blue"
        },
        --
        Keyword = {
            fg = "purple",
        },
        --
        -- Label = {
        --     fg = theme.base0A,
        -- },
        --
        Number = {
            fg = "orange"
        },
        --
        -- Operator = {
        --     fg = theme.base05,
        --     sp = "none",
        -- },
        --
        -- PreProc = {
        --     fg = "cyan"
        -- },
        --
        -- Repeat = {
        --     fg = theme.base0A,
        -- },
        --
        -- Special = {
        --     fg = theme.base0C,
        -- },
        --
        -- SpecialChar = {
        --     fg = theme.base0F,
        -- },
        --
        -- Statement = {
        --     fg = theme.base08,
        -- },
        --
        StorageClass = {
            fg = "cyan",
        },
        --
        String = {
            fg = "orange",
        },
        --
        -- Structure = {
        --     fg = theme.base0E,
        -- },
        --
        -- Tag = {
        --     fg = "cyan",
        -- },
        --
        Todo = {
            fg = "white",
            bg = "yellow"
        },
        Type = {
            fg = "cyan",
            sp = "none",
        },
        Typedef = {
            fg = "cyan"
        },








        -- ["@annotation"] = {
        --     fg = theme.base0F,
        -- },
        -- ["@attribute"] = {
        --     fg = theme.base0A,
        -- },
        ["@character"] = {
            fg = "orange",
        },
        ["@constant"] = {
            fg = "orange",
        },

        ["@constant.builtin"] = {
            fg = "orange",
        },

        -- ["@constant.macro"] = {
        --     fg = theme.base08,
        -- },
        --
        ["@error"] = {
            fg = "red"
        },
        --
        -- ["@exception"] = {
        --     fg = theme.base08,
        -- },
        --
        -- ["@float"] = {
        --     fg = theme.base09,
        -- },
        --
        -- ["@keyword"] = {
        --     fg = theme.base0E,
        -- },
        --
        -- ["@keyword.function"] = {
        --     fg = theme.base0E,
        -- },
        --
        -- ["@keyword.return"] = {
        --     fg = theme.base0E,
        -- },
        --
        ["@function"] = {
            fg = "yellow",
        },

        ["@function.builtin"] = {
            fg = "yellow",
        },

        ["@function.macro"] = {
            fg = "yellow",
        },

        ["@function.call"] = {
            fg = "yellow",
        },
        --
        -- ["@operator"] = {
        --     fg = theme.base05,
        -- },
        --
        -- ["@keyword.operator"] = {
        --     fg = theme.base0E,
        -- },
        --
        ["@method"] = {
            fg = "yellow"
        },

        ["@method.call"] = {
            fg = "yellow"
        },
        --
        ["@namespace"] = {
            fg = "green"
        },
        --
        -- ["@none"] = {
        --     fg = theme.base05,
        -- },
        --
        -- ["@parameter"] = {
        --     fg = theme.base08,
        -- },
        --
        -- ["@reference"] = {
        --     fg = theme.base05,
        -- },
        --
        ["@punctuation.bracket"] = {
            fg = "white"
        },
        ["@punctuation.delimiter"] = {
            fg = "white"
        },
        ["@punctuation.special"] = {
            fg = "white"
        },
        --
        ["@string"] = {
            fg = "orange",
        },
        --
        -- ["@string.regex"] = {
        --     fg = theme.base0C,
        -- },
        --
        -- ["@string.escape"] = {
        --     fg = theme.base0C,
        -- },
        --
        -- ["@string.special"] = {
        --     fg = theme.base0C,
        -- },
        --
        -- ["@symbol"] = {
        --     fg = theme.base0B,
        -- },
        --
        -- ["@tag"] = {
        --     link = "Tag",
        -- },
        --
        -- ["@tag.attribute"] = {
        --     link = "@property",
        -- },
        --
        -- ["@tag.delimiter"] = {
        --     fg = theme.base0F,
        -- },
        --
        -- ["@text"] = {
        --     fg = theme.base05,
        -- },
        --
        -- ["@text.strong"] = {
        --     bold = true,
        -- },
        --
        -- ["@text.emphasis"] = {
        --     fg = theme.base09,
        -- },
        --
        -- ["@text.strike"] = {
        --     fg = theme.base0F,
        --     strikethrough = true,
        -- },
        --
        -- ["@text.literal"] = {
        --     fg = theme.base09,
        -- },
        --
        -- ["@text.uri"] = {
        --     fg = theme.base09,
        --     underline = true,
        -- },
        --
        ["@type.builtin"] = {
            fg = "cyan"
        },
        --
        ["@variable"] = {
            fg = "nord_blue"
        },
        --
        -- ["@variable.builtin"] = {
        --     fg = "white"
        -- },
        --
        -- -- variable.global
        --
        -- ["@definition"] = {
        --     sp = theme.base04,
        --     underline = true,
        -- },
        --
        -- -- TSDefinitionUsage = {
        -- --   sp = theme.base04,
        -- --   underline = true,
        -- -- },
        --
        -- ["@scope"] = {
        --     bold = true,
        -- },
        --
        ["@field"] = {
            fg = "normal_blue"
        },

        ["@field.key"] = {
            fg = "normal_blue"
        },

        ["@property"] = {
            fg = "normal_blue"
        },
        --
        -- ["@include"] = {
        --     link = "Include",
        -- },
        --
        -- ["@conditional"] = {
        --     link = "Conditional",
        -- },
        --







        NvDashAscii = {
            bg ="none",
            fg ="blue"
        },
        NvDashButtons ={
            bg ="none",
            fg ="light_grey"
        }
    },

    theme = "archer",
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
