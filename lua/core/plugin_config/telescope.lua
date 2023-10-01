local builtin = require('telescope.builtin')

vim.keymap.set('n', '<c-y>', builtin.find_files, {})
vim.keymap.set('n', '<Space><Space>', builtin.oldfiles, {})
vim.keymap.set('n', '<Space>td', builtin.live_grep, {})
vim.keymap.set('n', '<Space>th', builtin.help_tags, {})

