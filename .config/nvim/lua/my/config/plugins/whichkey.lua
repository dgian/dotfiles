return {
    "folke/which-key.nvim",
    event = "VimEnter",
    enabled = false,
    config = function ()
        require("which-key").setup()
    end
}
