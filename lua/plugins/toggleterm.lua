return {
    "akinsho/toggleterm.nvim",
    config = function ()
        local toggleterm = require("toggleterm")
        toggleterm.setup({
            autochdir = true
        })
        -- Keymap
        vim.keymap.set("n", "<leader>tT", function ()
            toggleterm.toggle(1, 7, ".", "horizontal", "")
        end, {})
    end
}
