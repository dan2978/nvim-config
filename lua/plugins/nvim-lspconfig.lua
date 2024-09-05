local languages = require("config.languages")

local servers = {}
local settings = {}
-- Getting LSP servers and their settings
for i, language in pairs(languages) do
    if language.server ~= nil then
        table.insert(servers, i, language.server[1])
        table.insert(settings, i, language.server.settings)
    end
end

return {
    {
        "williamboman/mason.nvim",
        opts = {}
    },
    {
        "williamboman/mason-lspconfig.nvim",
        opts = { ensure_installed = servers }
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            for i, server in pairs(servers) do
                lspconfig[server].setup({ settings = settings[i] })
            end

            -- LSP keymap (default)
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
            vim.keymap.set("n", "gs", vim.lsp.buf.signature_help, {})
            vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
            vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, {})
            vim.keymap.set("n", "<F2>", vim.lsp.buf.rename, {})
        end
    }
}
