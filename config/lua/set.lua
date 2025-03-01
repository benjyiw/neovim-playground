-- set leader
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- fat cursor
vim.opt.guicursor = ""
-- disable mouse
vim.opt.mouse = ""

-- line numbers
vim.opt.nu = true
vim.opt.ruler = true
vim.opt.relativenumber = true

-- line highlighting
vim.opt.cursorline = true

-- tabulation
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

-- term colors
vim.opt.termguicolors = true

-- auto scroll
vim.opt.scrolloff = 6

-- always show gutter
vim.opt.signcolumn = "yes"

-- always split below and to the right
vim.opt.splitbelow = true
vim.opt.splitright = true

-- easy case insensitivity in commands and search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- trying out things from kickstart
vim.g.have_nerd_font = true

-- white space characters
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- indent wrapped lines
vim.opt.breakindent = true
