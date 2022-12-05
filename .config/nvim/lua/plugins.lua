local cmd = vim.cmd
local fn = vim.fn
local create_augroup = vim.api.nvim_create_augroup
local create_autocmd = vim.api.nvim_create_autocmd

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path
  }
  cmd.packadd('packer.nvim')
  print('Packer installed. Please restart Neovim.')
end

local packer_ok, packer = pcall(require, 'packer')
if not packer_ok then
  return
end

create_augroup('packer_user_config', { clear = true })

create_autocmd('BufWritePost', {
  pattern = 'plugins.lua',
  group = 'packer_user_config',
  command = 'source <afile>'
})

create_autocmd('BufWritePost', {
  pattern = 'plugins.lua',
  group = 'packer_user_config',
  command = 'PackerCompile'
})

packer.init {
  display = {
    open_fn = function()
      return require('packer.util').float { border = 'single' }
    end
  }
}

return packer.startup(
  function(use)
      use 'wbthomason/packer.nvim'
      use 'catppuccin/nvim'


      use 'hrsh7th/nvim-cmp'
      use 'hrsh7th/cmp-nvim-lsp'
      use 'neovim/nvim-lspconfig'
      use 'williamboman/mason.nvim'
      use 'williamboman/mason-lspconfig.nvim'

      if PACKER_BOOTSTRAP then
        packer.sync()
      end
  end
)
