local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup({
	ensure_installed = {
		"css",
		"dockerfile",
		"fish",
		"git_rebase",
		"gitattributes",
		"gitignore",
		"glsl",
		"go",
		"graphql",
		"html",
		"http",
		"javascript",
		"json",
		"lua",
		"php",
		"python",
		"rust",
		"scss",
		"sql",
		"tsx",
		"typescript",
		"yaml",
	},
	highlight = {
		enable = true,
	},
	autopairs = {
		enable = true,
	},
	autotag = {
		enable = true,
	},
	indent = {
		enable = true,
	},
	context_commentstring = {
		enable = true,
	},
})
