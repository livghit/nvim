--[[
-return {
	"craftzdog/solarized-osaka.nvim",
	lazy = true,
	priority = 1000,
	opts = function()
		return {
			transparent = true,
			terminal_colors = true,
			styles = {
				sidebars = "transparent",
			},
			lualine_bold = true,
		}
	end,
}-
--]]

return {
	--[[
  --
	"rose-pine/neovim",
	lazy = false,
	name = "rosepine",
	priority = 1000,
	opts = {
		transparent = true,
	},

  --]]
	--

	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			transparent = true,
		},
	},
}
