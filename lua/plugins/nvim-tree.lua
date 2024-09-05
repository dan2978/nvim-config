return {
    "https://github.com/nvim-tree/nvim-tree.lua.git",
    dependencies = { "https://github.com/nvim-tree/nvim-web-devicons.git" },
    config = function()
        -- Setup NvimTree with option to show dotfiles
        require("nvim-tree").setup({ filters = { dotfiles = false } })
        local api = require("nvim-tree.api")
        -- Keymap
        vim.keymap.set('n', '<space>tt', api.tree.toggle, {})
    end
}
