return {
    "akinsho/toggleterm.nvim",
    keys = {
        { [[C-\]] }
    },
    cmd = "ToggleTerm",
    config = function ()
        require("toggleterm").setup({
            open_mapping = [[<c-\>]],
            direction = "float",
        })
    end
}
