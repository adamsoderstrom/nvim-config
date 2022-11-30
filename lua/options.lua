local options = {
	clipboard = "unnamedplus", -- Allows neovim to access the system clipboard
	colorcolumn = "80,100", -- Set rulers at 80 and 100 characters
	expandtab = true, -- Convert tabs to spaces
	fileencoding = "utf-8", -- The encoding written to a file
	guifont = "Hack", -- The font used in graphical neovim applications
	hlsearch = true, -- Highlight all matches on previous search pattern
	ignorecase = true, -- Ignore case in search patterns
	pumheight = 10, -- Pop up menu height
	relativenumber = true, -- Set relative numbered lines
	scrolloff = 8, -- Minimal number of screen lines to keep above and below the cursor
	shiftwidth = 2, -- The number of spaces inserted for each indentation
	showtabline = 2, -- Always show tabs
	sidescrolloff = 8, -- Minimal number of screen columns to keep left and right of the cursor
	smartcase = true, -- Override the 'ignorecase' option if the search pattern contains upper case characters
	smartindent = true, -- Make indenting smarter again
	splitbelow = true, -- Force all horizontal splits to go below current window
	splitright = true, -- Force all vertical splits to go to the right of current window
	tabstop = 2, -- Insert 2 spaces for a tab
	updatetime = 300, -- Faster completion (4000ms default)
	wrap = false, -- Display lines as one long line
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

-- Highlight on yank
vim.api.nvim_command("au TextYankPost * silent! lua vim.highlight.on_yank()")
-- Enter terminal mode when opening a terminal
vim.api.nvim_create_autocmd({ "BufEnter", "TermOpen" }, { pattern = { "term://*" }, command = "startinsert" })
