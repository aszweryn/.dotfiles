-- Current setting on the bottom of the file, for the config to be applied --

require("tokyonight").setup({
	-- your configuration comes here
	-- or leave it empty to use the default settings
	style = "night", -- The theme comes in three styles, `storm`, a darker variant `night` and `day`
	transparent = false, -- Enable this to disable setting the background color
	transparent_statusbar = false, -- Enable this to disable setting the statusbar color
	terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
	styles = {
		-- Style to be applied to different syntax groups
		-- Value is any valid attr-list value `:help attr-list`
		comments = "italic",
		keywords = "italic",
		functions = "NONE",
		variables = "NONE",
		-- Background styles. Can be "dark", "transparent" or "normal"
		sidebars = "transparent", -- style for sidebars, see below
		floats = "transparent", -- style for floating windows
	},
	sidebars = { "qf", "help" }, -- Set a darker transparentbackground on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
	day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
	hide_inactive_statusline = true, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
	dim_inactive = false, -- dims inactive windows
	lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold
	
	-- You can override specific color groups to use other groups or a hex color
	--- fucntion will be called with a ColorScheme table
	---@param colors ColorScheme
	on_colors = function(colors) end,
	
	--- You can override specific highlights to use other groups or a hex color
	--- fucntion will be called with a Highlights and ColorScheme table
	---@param highlights Highlights
	---@param colors ColorScheme
	on_highlights = function(highlights, colors) end,
})


require('nightfox').setup({
	options = {
		-- Compiled file's destination location
		compile_path = vim.fn.stdpath("cache") .. "/nightfox",
		compile_file_suffix = "_compiled", -- Compiled file suffix
		transparent = false,    -- Disable setting background
		terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
		dim_inactive = false,   -- Non focused panes set to alternative background
		styles = {              -- Style to be applied to different syntax groups
			comments = "NONE",    -- Value is any valid attr-list value `:help attr-list`
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
		inverse = {             -- Inverse highlight for different types
			match_paren = false,
			visual = false,
			search = false,
		},
		modules = {             -- List of various plugins and additional options
			-- ...
		},
	},
	palettes = {},
	specs = {},
	groups = {},
})

--- CURRENT THEME ---
vim.cmd("colorscheme tokyonight")
-- Dummy fix for bad coloring of spaces
vim.cmd("colorscheme tokyonight")
