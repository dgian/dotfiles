return {
     { "catppuccin/nvim",
        name = "catppuccin",
        config = function ()
            require("catppuccin").setup({
                integrations = {
                    illuminate = true,
                }
            })
        end
     },
     { "rebelot/kanagawa.nvim",
        name = "kanagawa",
        config = function ()
            require("kanagawa").load("wave")
            local default_colors = require("kanagawa.colors").setup()
            local overrides = {
                IlluminatedWordText = { bg = default_colors.sumiInk3, },
                IlluminatedWordRead = { bg = default_colors.sumiInk3, },
                IlluminatedWordWrite = { bg = default_colors.sumiInk3, },
            }
            require("kanagawa").setup({
                overrides = function()
                    return overrides
                end,
                transparent = true,
            })
        end
    },
}
