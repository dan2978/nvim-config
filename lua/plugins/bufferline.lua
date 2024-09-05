return {
    "https://github.com/akinsho/bufferline.nvim.git",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function ()
        local bufferline = require("bufferline")
        bufferline.setup({})
        -- {Shift+,}Tab -- go to {previous,next} buffer
        vim.keymap.set("n", "<S-Tab>", function() bufferline.cycle(-1) end, {})
        vim.keymap.set("n", "<Tab>", function() bufferline.cycle(1) end, {})
        for i = 0, 9 do
            -- Ctrl+[1..9,0] -- go to buffer number [1..9,10]
            vim.keymap.set("n", "<C-" .. tostring(i) .. ">", function ()
                bufferline.go_to(i == 0 and 10 or i)
            end, {})
        end
    end
}
