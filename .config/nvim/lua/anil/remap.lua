vim.g.mapleader = ' '
local set = vim.keymap.set
local opt = vim.opt;


opt.number = true
opt.relativenumber = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.incsearch = true
opt.ignorecase = true
opt.wrap = true
opt.updatetime = 100
vim.cmd.colorscheme('gruvbox')
vim.o.background = 'dark'
-- to sync vim clipboard with os clipboard
-- opt.clipboard = 'unnamed'
set('n', '<leader>h', '<C-w>h', { noremap = true })

set('n', '<leader>l', '<C-w>l', { noremap = true })
set('n', '<leader>j', '<C-w>j', { noremap = true })
set('n', '<leader>k', '<C-w>k', { noremap = true })
set('n', '<leader>t', vim.cmd.NERDTreeToggle, { noremap = true })
set('n', '<leader><leader>', vim.cmd.NERDTreeFind, { noremap = true })
set('n', '<leader>c', ':nohlsearch<CR>', { noremap = true })
set('v', '<leader>y', '"+y', { noremap = true })
set('v', '<C-_>', '<plug>NERDCommenterToggle')
set('n', '<C-_>', '<plug>NERDCommenterToggle')


