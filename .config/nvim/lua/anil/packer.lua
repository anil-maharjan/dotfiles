vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use 'scrooloose/nerdtree'
	use "tpope/vim-fugitive"
	use { "ntk148v/habamax.nvim", requires = { "rktjmp/lush.nvim" } }
	use { "ellisonleao/gruvbox.nvim" }
	use {
		"williamboman/mason.nvim"
	}
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			--- Uncomment the two plugins below if you want to manage the language servers from neovim
			{ 'williamboman/mason.nvim' },
			{ 'williamboman/mason-lspconfig.nvim' },

			-- LSP Support
			{ 'neovim/nvim-lspconfig' },
			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'L3MON4D3/LuaSnip' },
		}
	}
	use 'ryanoasis/vim-devicons'
	use { 'neoclide/coc.nvim', branch = 'release' }
	-- use 'jiangmiao/auto-pairs'
	use 'windwp/nvim-ts-autotag'

	use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
	}
	use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'}

	use "saadparwaiz1/cmp_luasnip"
	use "rafamadriz/friendly-snippets"
	use "airblade/vim-gitgutter"
	use 'preservim/nerdcommenter'
	use "APZelos/blamer.nvim"
	use 'vim-airline/vim-airline'
	use "lukas-reineke/indent-blankline.nvim"

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}

	use {
		'nvim-treesitter/nvim-treesitter',
		run = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
			ts_update()
		end,
	}
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}
end)
