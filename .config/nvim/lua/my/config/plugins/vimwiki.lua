return {
    "vimwiki/vimwiki",
    enabled = false,
    dependencies = {
        "mattn/calendar-vim",
    },
    event = "BufWinEnter",
    init = function ()
        vim.g.vimwiki_list = {
            {
                path = "/data/knowledge/vimwiki",
            },
            {
                path = "/data/knowledge/my-notes",
                syntax = "markdown",
                ext = ".md",
            }
        }
        vim.g.vimwiki_global_ext = 0
    end
}

