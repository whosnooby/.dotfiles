local lsp = require('lsp-zero')

-- i'm sure their recommendations are nice
lsp.preset('recommended')

-- i want my lsps
lsp.ensure_installed({
  'rust_analyzer',
  'clangd'
})

-- configure cmp
local cmp = require('cmp')
local cmp_settings = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-i>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-o>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-p>'] = cmp.mapping.confirm({ select = true }),
  ['<C-Space>'] = cmp.mapping.complete()
})

-- say NO to sign icons
lsp.set_preferences({
  sign_icons = { }
})

-- gotta love those mappings, amirite
lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

-- you've got attachment issues, lsp-zero...
lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

lsp.setup()

