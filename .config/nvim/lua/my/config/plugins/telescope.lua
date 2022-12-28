local function find_files()
    require("telescope.builtin").find_files()
end

local function git_files()
    require("telescope.builtin").git_files()
end

local function find_symbols()
    require("telescope.builtin").grep_string({
        search = vim.fn.input("Grep > ") 
    }) 
end

return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.0",                            -- or  , branch = "0.1.x",
    dependencies = { 
        {"nvim-lua/plenary.nvim"} 
    },
    keys = {
        { "<leader>ff", find_files, desc = "Find in files" },
        { "<leader>gf", git_files, desc = "Find in git-tracked files" },
        { "<leader>fs", find_symbols, desc = "Find symbol everywhere" }
    },
    config = function()
        -- local actions = require("telescope.actions")

        local telescope = require("telescope")
        local borderless = true
        telescope.setup({
            defaults = {
                layout_strategy = "horizontal",
                layout_config = {
                    prompt_position = "top",
                },
                sorting_strategy = "ascending",
                mappings = {
                    i = {
                        ["<c-t>"] = function(...)
                            return require("trouble.providers.telescope").open_with_trouble(...)
                        end,
                        ["<C-Down>"] = function(...)
                            return require("telescope.actions").cycle_history_next(...)
                        end,
                        ["<C-Up>"] = function(...)
                            return require("telescope.actions").cycle_history_prev(...)
                        end,
                    },
                },
                prompt_prefix = " ",
                selection_caret = " ",
                winblend = borderless and 0 or 10,
            },
           -- pickers = {
           --     find_files = {
           --         theme = "cursor",
           --     }
           -- },
        })
--        telescope.load_extension("fzf")
    end,
}
