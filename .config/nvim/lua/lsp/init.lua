local cmp_ok, cmp = pcall(require, 'cmp')
if not cmp_ok then
  return
end

local lspconfig_ok, lspconfig = pcall(require, 'lspconfig')
if not lspconfig_ok then
  return
end

local mason_ok, mason = pcall(require, 'mason')
if not mason_ok then
  return
end

local mason_lspconfig_ok, mason_lspconfig = pcall(require, 'mason-lspconfig')
if not mason_lspconfig_ok then
  return
end


local servers = {
  'clangd',
  'texlab',
  'pylsp',
  'sumneko_lua'
}

mason.setup()
mason_lspconfig.setup { ensure_installed = servers }

-- cmp.setup {
--   mapping = {
--     ['<C-Space>'] = cmp.mapping.complete(),
--     ['<C-e>'] = cmp.mapping.abort(),
--     ['<Tab>'] = function(fallback)
--       if cmp.visible() then
--         cmp.select_next_item()
--       else
--         fallback()
--       end
--     end,
--     ['<S-Tab>'] = function(fallback)
--       if cmp.visible() then
--         cmp.select_prev_item()
--       else
--         fallback()
--       end
--     end,
--     ['<CR>'] = function(fallback)
--       if cmp.visible() then
--         cmp.confirm { select = true }
--       else
--         fallback()
--       end
--     end,
--     ['<C-k>'] = cmp.mapping.scroll_docs(-1),
--     ['<C-j>'] = cmp.mapping.scroll_docs(1)
--   },
--   sources = {
--     { name = 'nvim_lsp' }
--   }
-- }
