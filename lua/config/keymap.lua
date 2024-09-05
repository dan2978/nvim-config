-- Split horizontal
local function split()
    vim.cmd[[split]]
end

-- Split vertical
local function vsplit()
    vim.cmd[[vsplit]]
end

-- Split
vim.keymap.set("n", "<leader>sh", split, {})
vim.keymap.set("n", "<leader>sv", vsplit, {})

-- Unfocus terminal
vim.keymap.set("t", "<C-space>", "<C-\\><C-n><C-w>h", {silent = true})
