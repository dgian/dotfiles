return {
     { "catppuccin/nvim", name = "catppuccin" },
     { "rebelot/kanagawa.nvim", 
        name = "kanagawa",
        config = function () require("kanagawa").setup({
            transparent = false,
        })
        end
    },
}
