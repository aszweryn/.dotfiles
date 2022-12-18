require("tokyonight").setup({
	style = "moon",
	transparent = false,
	transparent_statusbar = false,
	terminal_colors = true,
	styles = {
		comments = "italic",
		keywords = "italic",
		functions = "NONE",
		variables = "NONE",
		sidebars = "transparent",
		floats = "transparent",
	},
	sidebars = { "qf", "help" },
	day_brightness = 0.3,
	hide_inactive_statusline = true,
	dim_inactive = false,
	lualine_bold = false,

	on_colors = function(colors) end,
	on_highlights = function(highlights, colors) end,
})


require('nightfox').setup({
	options = {
		compile_path = vim.fn.stdpath("cache") .. "/nightfox",
		compile_file_suffix = "_compiled",
		transparent = false,
		terminal_colors = true,
		dim_inactive = false,
		styles = {
			comments = "NONE",
			conditionals = "NONE",
			constants = "NONE",
			functions = "NONE",
			keywords = "NONE",
			numbers = "NONE",
			operators = "NONE",
			strings = "NONE",
			types = "NONE",
			variables = "NONE",
		},
		inverse = {
			match_paren = false,
			visual = false,
			search = false,
		},
		modules = {},
	},
	palettes = {},
	specs = {},
	groups = {},
})

vim.cmd("colorscheme tokyonight")
