local builtin = require('telescope.builtin')
local key = vim.keymap.set

key('n', '<leader>ff', builtin.find_files, {})
key('n', '<leader>gf', builtin.git_files, {})
key('n', '<leader>fs', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
