return {
    "https://github.com/nvim-telescope/telescope.nvim.git",
    config = function()
        local builtin = require("telescope.builtin")
        -- Default keymap
        vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
        vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
        vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
        vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
    end
}
