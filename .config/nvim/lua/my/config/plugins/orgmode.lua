return {
    "nvim-orgmode/orgmode",
    keys = {
        { "<leader>oa" },
        { "<leader>oc" },
    },
    config = function ()
        require("orgmode").setup_ts_grammar()
        require("orgmode").setup({
            org_default_notes_file = "~/zettelkasten/org/refile.org",
            org_agenda_files = "~/zettelkasten/org/agenda_files/**/*",
        })
    end
}
