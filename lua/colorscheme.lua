-- Set Colorscheme (if caught error, set default with dark-mode)
vim.cmd [[
try
  colorscheme rose-pine-moon         
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
