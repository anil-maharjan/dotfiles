-- Full path
vim.cmd("command! CpFpath lua vim.fn.setreg('+', vim.fn.expand('%:p'))")

-- Relative path
vim.cmd("command! CpRpath lua vim.fn.setreg('+', vim.fn.expand('%:p:~:.'))")


