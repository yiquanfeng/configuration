local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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

require("lazy").setup({
--	"tanvirtin/monokai.nvim",
	"folke/tokyonight.nvim",
	priority = 1000,
	opts = {},
	
	"nvim-tree/nvim-web-devicons",

	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },

	"nvim-tree/nvim-tree.lua",

	"williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim", 
    "neovim/nvim-lspconfig", 

	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-nvim-lsp",
	"L3MON4D3/LuaSnip", -- snippets引擎，不装这个自动补全会出问题
	"saadparwaiz1/cmp_luasnip",
	"rafamadriz/friendly-snippets",
	"hrsh7th/cmp-path", -- 文件路径

	install = { colorschme = { "habamax" } },

	checker = { enabled = true }
})
