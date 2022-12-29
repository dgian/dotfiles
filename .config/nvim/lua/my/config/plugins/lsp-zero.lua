return {
    "VonHeikemen/lsp-zero.nvim",

    dependencies = {
        -- LSP Support
        { "neovim/nvim-lspconfig" },
        { "williamboman/mason.nvim",
            cmd = "Mason",
            config = function()
                require("mason").setup()
                require("mason-lspconfig").setup({
                    automatic_installation = true
                })
            end
        },
        { "williamboman/mason-lspconfig.nvim" },

        -- Autocompletion
        { "hrsh7th/nvim-cmp" },
        { "hrsh7th/cmp-buffer" },
        { "hrsh7th/cmp-path" },
        { "saadparwaiz1/cmp_luasnip" },
        { "hrsh7th/cmp-nvim-lsp" },
        { "hrsh7th/cmp-nvim-lua" },

        -- Snippets
        { "L3MON4D3/LuaSnip" },
        { "rafamadriz/friendly-snippets" },
    },
    event = "VimEnter",
    config = function()
        local lsp = require("lsp-zero")

        lsp.preset("manual-setup")

        lsp.ensure_installed ({
            "tsserver",
            "eslint",
            "sumneko_lua",
            "rust_analyzer",
            "jdtls",
        })

        lsp.setup_servers({
            "tsserver",
            "eslint",
            "sumneko_lua",
            "rust_analyzer",
        })

        lsp.setup()
        vim.diagnostic.config({
            underline = true,
            update_in_insert = true,
            virtual_text = { spacing = 4, prefix = "●" },
            severity_sort = true,
        })

    end
}
