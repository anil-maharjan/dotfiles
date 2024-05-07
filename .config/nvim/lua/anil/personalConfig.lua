local opt = vim.opt;
local builtin = require('telescope.builtin')

--opt.guicursor = ""
opt.tabstop = 2
opt.nu = true
opt.relativenumber = true
opt.softtabstop = 2
opt.smartindent = true
opt.wrap = false
opt.swapfile = false
opt.shiftwidth = 2
opt.backup = false
opt.expandtab = true
opt.ignorecase = true
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true
opt.incsearch = true
opt.hlsearch = false
opt.laststatus = 2
opt.background = 'dark'
--opt.colorcolumn = '120'
opt.scrolloff = 10
opt.updatetime = 100
opt.hlsearch = false

-- Full path
vim.cmd("command! CpFpath lua vim.fn.setreg('+', vim.fn.expand('%:p'))")

-- Relative path
vim.cmd("command! CpRpath lua vim.fn.setreg('+', vim.fn.expand('%:p:~:.'))")
vim.keymap.set("n", "]g", vim.diagnostic.goto_next)
vim.keymap.set("n", "[g", vim.diagnostic.goto_prev)
vim.keymap.set('n', '<leader>\\h', ':set hlsearch!<CR>')
vim.keymap.set("n", "GI", "<Plug>(coc-implementation)", {silent = true})
vim.keymap.set('n', "<leader>z", 'za', {silent = true, noremap = true})
vim.keymap.set('n', '<leader>b', function() builtin.buffers({
  sort_mru=true,
  ignore_current_buffer=true
}) end)
