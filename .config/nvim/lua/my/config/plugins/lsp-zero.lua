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
            "lua_ls",
            "rust_analyzer",
            "jdtls",
        })

        lsp.setup_servers({
            "tsserver",
            "eslint",
            "lua_ls",
            "rust_analyzer",
        })

        lsp.setup()
        vim.diagnostic.config({
            underline = true,
            update_in_insert = true,
            virtual_text = { spacing = 4, prefix = "●" },
            severity_sort = true,
        })

        local cmp = require("cmp")
        cmp.setup({
            mapping = {
                ['<CR>'] = cmp.mapping.confirm({select = true}),
            }
        })
        local cmp_autopairs = require("nvim-autopairs.completion.cmp")
        cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

        require("luasnip.loaders.from_vscode").lazy_load()

        local snippets = require("luasnip")
        local s = snippets.snippet
        local sn = snippets.snippet_node
        local t = snippets.text_node
        local i = snippets.insert_node
        local c = snippets.choice_node
        snippets.add_snippets("java", {
            -- Very long example for a java class.
            s("fn", {
                t({ "", "" }),
                c(1, {
                    t("public "),
                    t("private "),
                }),
                c(2, {
                    t("void"),
                    t("String"),
                    t("char"),
                    t("int"),
                    t("double"),
                    t("boolean"),
                    i(nil, ""),
                }),
                t(" "),
                i(3, "myFunc"),
                t("("),
                i(4),
                t(")"),
                c(5, {
                    t(""),
                    sn(nil, {
                        t({ "", " throws " }),
                        i(1),
                    }),
                }),
                t({ " {", "\t" }),
                i(0),
                t({ "", "}" }),
            }),
        }, {
            key = "java",
        })
        vim.api.nvim_set_keymap("i", "<C-]>", "<Plug>luasnip-next-choice", {})
        vim.api.nvim_set_keymap("i", "<A-]>", "<Plug>luasnip-prev-choice", {})
    end
}
