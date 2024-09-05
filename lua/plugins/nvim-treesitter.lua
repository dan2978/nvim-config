local languages = require("config.languages")

local ts_languages = {}
-- Get a table with all names of the languages
for _, language in pairs(languages) do
    for _, ts_language in pairs(language[1]) do
        table.insert(ts_languages, ts_language)
    end
end

return {
    "https://github.com/nvim-treesitter/nvim-treesitter.git",
    opts = {
        ensure_installed = ts_languages,
        sync_install = false,
        auto_install = true,
    }
}
