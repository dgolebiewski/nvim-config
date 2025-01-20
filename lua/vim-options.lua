vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set relativenumber")
vim.cmd("set number")
vim.cmd("set scrolloff=10")
vim.cmd("set exrc")
vim.cmd("set clipboard+=unnamedplus")
vim.g.mapleader = " "

vim.opt.swapfile = false

vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

local pipepath = vim.fn.stdpath('cache') .. '/server.pipe'
if not vim.loop.fs_stat(pipepath) then
  vim.fn.serverstart(pipepath)
end
