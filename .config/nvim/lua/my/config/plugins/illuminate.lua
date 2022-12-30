return {
    "RRethy/vim-illuminate",
    event = "BufReadPost",
    config = function()
        require("illuminate").configure({ delay = 250 })
    end
}
