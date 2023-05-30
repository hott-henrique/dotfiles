local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
    'pyright',
})

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
})

lsp.set_preferences({
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

lsp.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "<leader>ld", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "<leader>lH", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>lvws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>lvd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "<leader>lnd", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "<leader>lpd", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>lca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>lfr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>lrn", function() vim.lsp.buf.rename() end, opts)

    -- ToDo: Find a better binding to sig help: Idea a way to activate some buffer to send char,
    -- but not inserting, and when finished get back to insert mode.
    vim.keymap.set("i", "<C-u>", function() vim.lsp.buf.signature_help() end, opts)
end)

lsp.setup()

