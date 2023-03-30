-- Other plugins, mostly disabled for evaluation
return {
    { "mbill/undotree", enabled = false },
    { "tpope/vim-fugitive", enabled = false },
    { "simrat39/symbols-outline.nvim", enabled = false, config = true, cmd = "SymbolsOutline" },
    { "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        dependencies = {
          "nvim-lua/plenary.nvim",
          "MunifTanjim/nui.nvim",
        },
        cmd = "Neotree"
    },
    { "stevearc/aerial.nvim",
        enabled = true,
        cmd = "AerialOpen",
        config = function ()
            require("aerial").setup({
                show_guides = true,
                filter_kind = false,
            })
        end,
    },
    { "echasnovski/mini.surround",
        version = "*",
        event = "VimEnter",
        config = function ()
            require("mini.surround").setup()
        end
    },
    { 'echasnovski/mini.align',
        version = '*',
        event = "VimEnter",
        config = function ()
            require("mini.align").setup()
        end
    },
    { "Exafunction/codeium.vim",
        event = "VimEnter",
        enabled = false,
        config = function ()
            local key = vim.keymap.set
            key('i', '<C-g>', function () return vim.fn['codeium#Accept']() end, { expr = true })
            key('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
            key('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
            key('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })
        end
    },
    { "boltlessengineer/bufterm.nvim",
        event = "VimEnter",
        enabled = false,
        keys = {
            { "<C-A-t>", desc = "Toggle terminal" },
        },
        config = function ()
            require("bufterm").setup({})
            local key = vim.keymap.set
            key("n", "<C-A-t>", "<Cmd>BufTermEnter<CR>")
        end
    },
    {"utilyre/barbecue.nvim",
        name = "barbecue",
        event = "BufReadPost",
        version = "*",
        dependencies = {
            "SmiteshP/nvim-navic",
        },
        config = function()
            require("barbecue").setup()
        end,
    },
    {
        "gaoDean/autolist.nvim",
        enabled = false,
        ft = {
            "markdown",
            "text",
            "tex",
            "plaintex",
        },
        config = function()
            local autolist = require("autolist")
            autolist.setup()
            autolist.create_mapping_hook("i", "<CR>", autolist.new)
            autolist.create_mapping_hook("i", "<Tab>", autolist.indent)
            autolist.create_mapping_hook("i", "<S-Tab>", autolist.indent, "<C-D>")
            autolist.create_mapping_hook("n", "o", autolist.new)
            autolist.create_mapping_hook("n", "O", autolist.new_before)
            autolist.create_mapping_hook("n", ">>", autolist.indent)
            autolist.create_mapping_hook("n", "<<", autolist.indent)
            autolist.create_mapping_hook("n", "<C-r>", autolist.force_recalculate)
            autolist.create_mapping_hook("n", "<leader>x", autolist.invert_entry, "")
            vim.api.nvim_create_autocmd("TextChanged", {
                pattern = "*",
                callback = function()
                    vim.cmd.normal({autolist.force_recalculate(nil, nil), bang = false})
                end
            })
        end,
    },
    {
        "sindrets/diffview.nvim",
        event = "VimEnter"
    },
    {
        "SmiteshP/nvim-navbuddy",
        event = "BufReadPost",
        config = function ()
            require("nvim-navbuddy").setup(
                {
                    lsp = {
                        auto_attach = true,
                    },
                }
            )
        end
    }
}
