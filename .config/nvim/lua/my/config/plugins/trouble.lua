return {
    "folke/trouble.nvim",
    cmd = "Trouble",
    dependencies = {
        { "kyazdani42/nvim-web-devicons", lazy = true }
    },
    config = function ()
        require("trouble").setup()
    end
}
