-- Colemak bindings

-- Normal mode mappings
vim.api.nvim_set_keymap('n', 'u', 'i', { noremap = true })
vim.api.nvim_set_keymap('n', 'l', 'u', { noremap = true })
vim.api.nvim_set_keymap('n', 'n', 'j', { noremap = true })
vim.api.nvim_set_keymap('n', 'e', 'k', { noremap = true })
vim.api.nvim_set_keymap('n', 'i', 'l', { noremap = true })
vim.api.nvim_set_keymap('n', 'k', 'n', { noremap = true })
vim.api.nvim_set_keymap('n', 'K', 'N', { noremap = true })
vim.api.nvim_set_keymap('n', 'm', 'i', { noremap = true })
vim.api.nvim_set_keymap('n', 'M', 'I', { noremap = true })
vim.api.nvim_set_keymap('n', 'I', '<nop>', { noremap = true })

-- Visual mode mappings
vim.api.nvim_set_keymap('v', 'n', 'j', { noremap = true })
vim.api.nvim_set_keymap('v', 'e', 'k', { noremap = true })
vim.api.nvim_set_keymap('v', 'i', 'l', { noremap = true })

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.showcmd = true 
vim.opt.cursorline = false
vim.opt.autoread = true

-- Spaces and Tabs
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

vim.keymap.set('n', '<leader>t', ':terminal<CR>')
