return {
    "nvim-lualine/lualine.nvim",
    event = "VimEnter",
    dependencies = {
        { "kyazdani42/nvim-web-devicons", lazy = true }
    },
    config = function ()
        require("lualine").setup({
            options = {
                theme = "nightfly"
            }
        })
    end
}
