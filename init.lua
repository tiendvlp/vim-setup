
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.notify ("" .. lazypath)
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("tiendang.plugins-setup")
require("tiendang.core.options")
require("tiendang.core.keymaps")
require("tiendang.core.colorscheme")
require("tiendang.plugins.comment")
require("tiendang.plugins.nvim-tree")
require("tiendang.plugins.lualine")
require("tiendang.plugins.telescope")
require("tiendang.plugins.nvim-cmp")
require("tiendang.plugins.lsp.mason")
require("tiendang.plugins.lsp.lspsaga")
require("tiendang.plugins.lsp.lspconfig")
require("tiendang.plugins.lsp.null-ls")
require("tiendang.plugins.autopairs")
require("tiendang.plugins.treesitter")
require("tiendang.plugins.gitsigns")
require("tiendang.plugins.rust-tools")
require("tiendang.plugins.toggleterm")
require("tiendang.plugins.tabnine")

