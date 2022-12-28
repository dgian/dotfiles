return {
    { "theprimeagen/harpoon",
        keys = {
            { "<leader>a", desc = "Adds file to harpoon list" },
            { "<A-h>", desc = "Toggles harpoon list menu" },
            { "<A-1>", desc = "Navigates to 1st harpoon-ed file" },
            { "<A-2>", desc = "Navigates to 2nd harpoon-ed file" },
            { "<A-3>", desc = "Navigates to 3nd harpoon-ed file" },
            { "<A-4>", desc = "Navigates to 3nd harpoon-ed file" },
        },
        config = function ()
            local mark = require("harpoon.mark")
            local ui = require("harpoon.ui")
            local key = vim.keymap.set

            key("n", "<leader>a", mark.add_file)
            key("n", "<A-h>", ui.toggle_quick_menu)
            key("n", "<A-1>", function() ui.nav_file(1) end)
            key("n", "<A-2>", function() ui.nav_file(2) end)
            key("n", "<A-3>", function() ui.nav_file(3) end)
            key("n", "<A-4>", function() ui.nav_file(4) end)
        end
    }
}
