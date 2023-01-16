return {
    "vimwiki/vimwiki",
    dependencies = {
        "mattn/calendar-vim",
    },
    event = "VimEnter",
    init = function ()
        vim.g.vimwiki_list = {
            {
                path = "/data/knowledge/vimwiki",
            }
        }
    end
}

