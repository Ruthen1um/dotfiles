local opt = vim.opt
opt.number = true
opt.softtabstop = 2
opt.tabstop = 2
opt.shiftwidth = 2
opt.shiftround = true
opt.expandtab = true
opt.smartindent = true
opt.shortmess = { a = true, o = true, O = true, t = true, I = true, c = true }
opt.ignorecase = true
opt.termguicolors = true
opt.list = true
opt.listchars = { tab = '··', trail = '·' }
opt.mouse = 'a'
opt.pumheight = 10
opt.smartcase = true
opt.updatetime = 300
opt.cursorline = true
opt.wrap = false
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.iskeyword:append('-')
