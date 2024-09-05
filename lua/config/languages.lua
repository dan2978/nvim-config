-- List of languages. Format:
-- [0]: string[]
--     List of languages with names from treesitter
-- [server]: table {
--     [0]: string
--         LSP server name from mason
--     [settings]: table
--         Settings to pass to
--         nvim-lspconfig[server].setup({ settings = settings })
-- }
return {
    { { "asm" } },
    { { "c", "cpp" }, server = { "clangd" } },
    { { "rust" }, server = { "rust_analyzer" } },
    { { "cmake" }, server = { "cmake" } },
    { { "make" }, server = { "autotools_ls" } },
    { { "python" }, server = { "pyright" } },
    { { "lua" }, server = { "lua_ls", settings = {
        Lua = { diagnostics = { globals = { "vim" } } }
    } } },
    { { "verilog" }, server = { "verible" } },
    { { "latex", "bibtex" }, server = { "texlab" } },
--    { { "go" }, server = { "gopls" } },
}
