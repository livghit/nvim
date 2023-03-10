vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
      -- Packer can manage itself
      use 'wbthomason/packer.nvim'
      use {
          'nvim-telescope/telescope.nvim', tag = '0.1.0',
          -- or                            , branch = '0.1.x',
          requires = { { 'nvim-lua/plenary.nvim' } }
      }
      use 'ThePrimeagen/harpoon'
      --Colorschemes
      use 'folke/tokyonight.nvim'
      use {
          'svrana/neosolarized.nvim',
          requires = { 'tjdevries/colorbuddy.nvim' }
      }

      --Treesitter and autopairs
      use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
      use 'windwp/nvim-autopairs'
      use 'windwp/nvim-ts-autotag'

      --Neovim colorazier

      use 'norcalli/nvim-colorizer.lua'

      --Lualine
      use {
          'nvim-lualine/lualine.nvim',
          requires = { 'kyazdani42/nvim-web-devicons', opt = true }
      }

      -- Lsp setup
      use {
          'VonHeikemen/lsp-zero.nvim',
          requires = {
              -- LSP Support
              { 'neovim/nvim-lspconfig' },
              { 'williamboman/mason.nvim' },
              { 'williamboman/mason-lspconfig.nvim' },

              -- Autocompletion
              { 'hrsh7th/nvim-cmp' },
              { 'hrsh7th/cmp-buffer' },
              { 'hrsh7th/cmp-path' },
              { 'saadparwaiz1/cmp_luasnip' },
              { 'hrsh7th/cmp-nvim-lsp' },
              { 'hrsh7th/cmp-nvim-lua' },

              -- Snippets
              { 'L3MON4D3/LuaSnip' },
              { 'rafamadriz/friendly-snippets' },
          }
      }
      -- Neovim Terminal
      use {
          's1n7ax/nvim-terminal',
          config = function()
            vim.o.hidden = true
            require('nvim-terminal').setup()
          end,
      }

      -- NerdTree
      use {
          'nvim-tree/nvim-tree.lua',
          requires = {
           use 'nvim-tree/nvim-web-devicons', -- optional, for file icons
          },
      }
    end)
