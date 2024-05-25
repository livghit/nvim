return {
	{ "nvim-tree/nvim-web-devicons", lazy = true },
	--noice nvim
	{
		"folke/noice.nvim",
		opts = function(_, opts)
			table.insert(opts.routes, {
				filter = {
					any = {
						{ event = "notify", find = "No information available" },
						{ event = "notify", find = "# Plugin Updates" },
						{ event = "notify", find = "# Config Change Detected." },
					},
				},
				opts = { skip = true },
			})
			opts.presets.lsp_doc_border = true
			opts.presets.bottom_search = true
			opts.presets.command_palette = false
		end,
	},
	{
		"rcarriga/nvim-notify",
		opts = {
			timeout = 10000,
		},
	},
	--statusline
	{
		"nvim-lualine/lualine.nvim",
		event = "VeryLazy",
		opts = {
			options = {
				theme = "rose-pine",
			},
		},
	},

	--logo
	{
		"nvimdev/dashboard-nvim",
		event = "VimEnter",
		opts = function(_, opts)
			local logo = [[ 
      ▒▒▒▒░░                                                            
                                                                  
                                                                  
                          ▒▒▒▒▒▒▒▒▒▒▒▒▒▒                          
                      ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒                      
                    ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒                    
                  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒                  
                ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒                
              ████████████▒▒▒▒▒▒▒▒▒▒▒▒▒▒████████████              
            ██▒▒▒▒▒▒▒▒▒▒▒▒██▒▒▒▒▒▒▒▒▒▒██▒▒▒▒▒▒▒▒▒▒▒▒██            
            ██▒▒▒▒██  ▒▒▒▒▒▒██████████▒▒▒▒▒▒██  ▒▒▒▒██            
            ██▒▒▒▒████▒▒▒▒▒▒██▒▒▒▒▒▒██▒▒▒▒▒▒████▒▒▒▒██            
            ██▒▒▒▒▒▒▒▒▒▒▒▒██▒▒▒▒▒▒▒▒▒▒██▒▒▒▒▒▒▒▒▒▒▒▒██            
              ████████████▒▒▒▒██▒▒██▒▒▒▒████████████              
                ▒▒▒▒▒▒▒▒▒▒▒▒▒▒██████▒▒▒▒▒▒▒▒▒▒▒▒▒▒                
              ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒              
            ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒            
            ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒            
              ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒              
                    ▒▒▒▒▒▒  ▒▒▒▒▒▒▒▒▒▒  ▒▒▒▒▒▒                    
                              ▒▒▒▒▒▒                              
                                                                  
      ]]
			logo = string.rep("\n", 8) .. logo .. "\n\n"
			opts.config.header = vim.split(logo, "\n")
		end,
	},

	{ "MunifTanjim/nui.nvim", lazy = true },
}
