-- Setting Options (Like as :set)
local options = {
	encoding = "utf-8", 			-- Encoding UTF-8
	fileencoding = "utf-8", 		-- File Encoding UTF-8
	helplang = "ja", 			    -- Japanese Help File
	title = true, 					-- Show Title
	cursorline = true, 				-- Show Cursorline
	number = true, 					-- Show Line Number
	relativenumber = false,
	timeoutlen = 300, 
	autoread = true,                -- Auto reload files are changed without Vim
	wrapscan = true, 			    -- Search from beginning if reach end
    shiftwidth = 4,                 -- Change TAB Space 4 letters
	expandtab = true,
	tabstop = 4,
	showmatch = true,  			    -- Auto close brackets
	wrap = true,  					-- Line breaks at the right edge
}

for k, v in pairs(options) do
	vim.opt[k] = v
end


