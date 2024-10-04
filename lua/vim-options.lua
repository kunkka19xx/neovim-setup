vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set cursorline")
vim.api.nvim_set_option("clipboard","unnamed")
vim.opt.hlsearch = false
vim.opt.incsearch = true
-- move selected lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- paste over highlight word
vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
