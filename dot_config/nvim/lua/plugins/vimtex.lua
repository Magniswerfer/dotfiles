return {
	"lervag/vimtex",
	lazy = false, -- don't lazy load
	config = function()
		vim.g.vimtex_view_method = "zathura" -- or whatever PDF viewer you use
		-- Add any other vimtex configurations you want here
		-- Add this to recognize all .tex files in your project
		vim.g.vimtex_subfile_start_local = 1

		---
		vim.g.vimtex_syntax_enabled = 1
		vim.api.nvim_create_autocmd({ "FileType" }, {
			pattern = { "tex", "bib" },
			callback = function()
				vim.cmd("TSDisable highlight")
			end,
		})
	end,
}
