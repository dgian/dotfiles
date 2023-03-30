-- basic editor options
local opt = vim.opt

-- line numbers
opt.nu = true
opt.rnu = true

-- tabs / indentation
opt.ts = 4
opt.sts = 4
opt.sw = 4
opt.et = true

-- opt.cb = "unnamedplus"

-- backups and undo
opt.swf = false
opt.bk = false
opt.udir = os.getenv("HOME") .. "/.nvim/undodir"
opt.udf = true

-- search
opt.hls = false   -- highlight
opt.is = true     -- incremental

-- scroll
opt.so = 10

-- ruler
opt.cc = "120"

opt.cul = true
opt.scl = "auto:4"

opt.ls = 3
opt.list = true
opt.lcs = {
    trail = "␣",
    tab = ">-",
}

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})

-- leader key
vim.g.mapleader = " "

vim.wo.wrap = false

