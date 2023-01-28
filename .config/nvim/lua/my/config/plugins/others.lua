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
            local key = vim.keymap.set
            key("n", "<leader>i]", "saiw]")
        end
    },
}
