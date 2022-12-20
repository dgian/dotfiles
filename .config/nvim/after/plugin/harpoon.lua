local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
local key = vim.keymap.set

key("n", "<leader>a", mark.add_file)
key("n", "<C-e>", ui.toggle_quick_menu)
key("n", "<C-h>", function() ui.nav_file(1) end)
key("n", "<C-t>", function() ui.nav_file(2) end)
key("n", "<C-n>", function() ui.nav_file(3) end)
key("n", "<C-s>", function() ui.nav_file(4) end)
