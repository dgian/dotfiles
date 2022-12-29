local function find_files()
    require("telescope.builtin").find_files()
end

local function git_files()
    require("telescope.builtin").git_files()
end

local function find_everywhere()
    require("telescope.builtin").grep_string({
        search = vim.fn.input("Grep > ")
    })
end

local function find_open_file()
    require("telescope.builtin").buffers({
        ignore_current_buffer = true,
        sort_mru = true,
    })
end

local function find_command()
    require("telescope.builtin").commands()
end

return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.0",                            -- or  , branch = "0.1.x",
    dependencies = {
        {"nvim-lua/plenary.nvim"}
    },
    keys = {
        { "<leader>ff", find_files, desc = "[F]ind [F]ile" },
        { "<leader>fo", find_open_file, desc = "[F]ind [O]pen file" },
        { "<leader>fg", git_files, desc = "[F]ind [G]it-tracked file" },
        { "<leader>fc", find_command, desc = "[F]ind [C]ommand" },
        { "<leader><space>f", find_everywhere, desc = "[F]ind everywhere" }
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
            pickers = {
                find_files = {
                    theme = "ivy",
                },
                git_files = {
                    theme = "ivy",
                },
                buffers = {
                    theme = "ivy",
                }
            },
        })
--        telescope.load_extension("fzf")
    end,
}
