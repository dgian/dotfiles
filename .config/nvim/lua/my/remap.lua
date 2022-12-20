-- common key mappings

local key = vim.keymap.set

key("n", "<leader>e", vim.cmd.Ex)

-- move lines up/down
key("v", "J", ":m '>+1<CR>gv=gv")
key("v", "K", ":m '<-2<CR>gv=gv")

-- keep cursor at position when joining lines
-- key("n", "J", "mzJ`z")

-- keep cursor in the middle when page up/down
key("n", "<C-d>", "<C-d>zz")
key("n", "<C-u>", "<C-u>zz")
key("n", "n", "nzzzv")
key("n", "N", "Nzzzv")

-- keep copied value over
key("x", "<leader>p", [["_dP]])

-- copy to clipboard
key({"n", "v"}, "<leader>y", [["+y]])
key("n", "<leader>Y", [["+Y]])

key("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
key("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
