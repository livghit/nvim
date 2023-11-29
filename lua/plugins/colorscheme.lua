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
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	opts = {
		transparent = true,
	},
}
