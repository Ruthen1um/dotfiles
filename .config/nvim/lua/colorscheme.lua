local cmd = vim.cmd

local colorscheme = 'catppuccin'

local colorscheme_ok, _ = pcall(cmd.colorscheme, colorscheme)
if not colorscheme_ok then
  print("colorscheme '" .. colorscheme .. "' not found!")
  return
end
