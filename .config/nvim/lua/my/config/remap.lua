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

key("n", "<leader><leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
key("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })


-- LSP & jdtls
key("n", "<leader>lh", "<cmd>lua vim.lsp.buf.hover()<CR>", { desc = "LSP: Display documentation [h]elp (e.g. doclet)" })
key("n", "<leader>lH", "<cmd>lua vim.lsp.buf.signature_help()<CR>", { desc = "LSP: Display function signature [H]elp" })
key("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { desc = "LSP: Go to [d]efinition" })
key("n", "<leader>lD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { desc = "LSP: Go to [d]eclaration" })
key("n", "gt", "<cmd>lua vim.lsp.buf.type_definition()<CR>", { desc = "LSP: Go to [t]ype definition" })
key("n", "gI", "<cmd>lua vim.lsp.buf.implementation()<CR>", { desc = "LSP: Go to [i]mplementation" })
key("n", "gs", "<cmd>lua require'jdtls'.super_implementation()<CR>", { desc = "LSP: Go to [s]uper implementation" })
key("n", "<A-R>", "<cmd>lua vim.lsp.buf.rename()<CR>", { desc = "LSP: Re[n]ame symbol" })
key("n", "<A-CR>", "<cmd>lua vim.lsp.buf.code_action()<CR>", { desc = "LSP: Re[n]ame symbol" })
key("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>", { desc = "LSP: Go to previous diagnostic entry" })
key("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>", { desc = "LSP: Go to next diagnostic entry" })
key("n", "<leader>oi", "<cmd>lua require'jdtls'.organize_imports()<CR>", { desc = "jdtls: [O]rganize [I]mports" })
key("n", "<leader>rc", "<cmd>lua require'jdtls'.test_class()<CR>", { desc = "jdtls: [R]un test [C]lass" })
key("n", "<leader>rm", "<cmd>lua require'jdtls'.test_nearest_method()<CR>", { desc = "jdtls: [R]un test [M]ethod" })
key("n", "<leader>ev", "<cmd>lua require'jdtls'.extract_variable_all()<CR>", { desc = "jdtls: [E]xtract [V]ariable" })
key("v", "<leader>ev", "<esc><cmd>lua require'jdtls'.extract_variable_all(true)<CR>", { desc = "jdtls: [E]xtract [V]ariable" })
key("n", "<leader>em", "<cmd>lua require'jdtls'.extract_method(true)<CR>", { desc = "jdtls: [E]xtract [M]ethod" })
key("v", "<leader>em", "<esc><cmd>lua require'jdtls'.extract_method(true)<CR>", { desc = "jdtls: [E]xtract [M]ethod" })

key("n", "<A-O>", "<esc><cmd>Navbuddy<CR>", { desc = "Navigation outline" })
key("n", "<A-O>", "<esc><cmd>Navbuddy<CR>", { desc = "Navigation outline" })

key({"n", "x", "o"}, "<leader>s", "<Plug>(leap-forward-to)")
key({"n", "x", "o"}, "S", "<Plug>(leap-backward-to)")
key({"v", "o"}, "x", "<Plug>(leap-forward-till)")
key({"v", "o"}, "X", "<Plug>(leap-backward-till)")
