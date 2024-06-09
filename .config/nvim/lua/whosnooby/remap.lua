-- (p)roject (open) - open project directory
vim.keymap.set('n', '<leader>po', vim.cmd.Ex)

-- switch between source and header files
vim.keymap.set('n', '<leader>/', vim.cmd.ClangdSwitchSourceHeader or print("Error: not a C/C++ file.")) 

-- uppercase J and K move selected code blocks around
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- merge with next line but keep cursor in place
vim.keymap.set('n', 'J', 'mzJ`z')

-- keep cursor in a sensible place when searching
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- leader + p to overwrite selection
vim.keymap.set('x', '<leader>p>', '\"_dP')

-- leader + y to copy to clipboard
vim.keymap.set('n', '<leader>y', '\"+y')
vim.keymap.set('v', '<leader>y', '\"+y')
vim.keymap.set('n', '<leader>Y', '\"+Y')

-- leader + d to delete without copying
vim.keymap.set('n', '<leader>d', '\"_d')
vim.keymap.set('v', '<leader>d', '\"_d')

