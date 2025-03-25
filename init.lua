-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

local set = vim.keymap.set

vim.g.mapleader = " "

set("i", "<esc>", "jj")
