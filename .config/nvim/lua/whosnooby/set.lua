-- what kind of maniac works without line numbers?
vim.opt.nu = true
vim.opt.relativenumber = false -- set this to true when you finally snap

-- 4 space tabs ftw
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- please be smart about your indenting.
vim.opt.smartindent = true

-- line wrapping in code is so unnecessary. like, it looks so wrong...
vim.opt.wrap = false

-- i like to live on the edge. do not make any backups.
vim.opt.swapfile = false
vim.opt.backup = false
-- please store my entire undotree. thanks.
vim.opt.undodir = os.getenv('HOME') .. '/.vim/undodir' -- i hate this.
vim.opt.undofile = true

-- this is how all searches should work.
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- please keep at least 8 lines at the bottom of the screen.
vim.opt.scrolloff = 8

-- i use space as my leader key.
vim.g.mapleader = ' '

