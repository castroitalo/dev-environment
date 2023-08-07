local builtin = require('telescope.builtin')
local telescope = require ('telescope')

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})

telescope.setup {
    pickers = {
        find_files = {
            hidden = true
        }
    }
}
