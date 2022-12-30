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
            local default_colors = require("kanagawa.colors").setup()
            local overrides = {
                IlluminatedWordText = { bg = default_colors.sumiInk3, },
                IlluminatedWordRead = { bg = default_colors.sumiInk3, },
                IlluminatedWordWrite = { bg = default_colors.sumiInk3, },
            }
            require("kanagawa").setup({
                overrides = overrides,
                transparent = false,
            })
        end
    },
}
