require('catppuccin').setup({
	flavour = 'frappe', -- best flavour

	transparent_background = true,

	show_end_of_buffer = true,

	no_italic = false,
	no_bold = false,
	no_underline = false,
	styles = {
		comments = { 'italic' }
	},

	default_integrations = true,
	integrations = {
		treesitter = true,
		markdown = true
	}
})

vim.cmd.colorscheme 'catppuccin'
vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
