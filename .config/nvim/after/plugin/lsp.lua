local lsp = require('lsp-zero')

-- manual setup, as I want to install jdtls via Mason
-- but setup separately using nvim-jdtls plugin
lsp.preset('manual-setup')

lsp.ensure_installed ({
    'tsserver',
    'eslint',
    'sumneko_lua',
    'rust_analyzer',
    'jdtls',
})

lsp.setup_servers({
    'tsserver',
    'eslint',
    'sumneko_lua',
    'rust_analyzer',
})

lsp.setup()
