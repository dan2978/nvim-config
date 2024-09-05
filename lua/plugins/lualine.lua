-- Habamax colors from https://github.com/neovim/neovim/blob/master/runtime/colors/habamax.vim
local colors = {
    black       = "#1c1c1c", -- color00
    darkred     = "#af5f5f", -- color01
    darkgreen   = "#5faf5f", -- color02
    darkyellow  = "#af875f", -- color03
    darkblue    = "#5f87af", -- color04
    darkmagenta = "#af87af", -- color05
    gray        = "#9e9e9e", -- color07
    darkgray    = "#303030", -- colorLine
    white       = "#dadada", -- white
}

-- Habamax compatible theme. Modified https://github.com/nvim-lualine/lualine.nvim/blob/master/lua/lualine/themes/codedark.lua
local habamax = {
    normal = {
        b = { fg = colors.darkgreen, bg = colors.black },
        a = { fg = colors.black, bg = colors.darkgreen, gui = 'bold' },
        c = { fg = colors.white, bg = colors.darkgray },
    },
    command = {
        a = { fg = colors.black, bg = colors.darkyellow, gui = 'bold' },
    },
    visual = {
        b = { fg = colors.darkmagenta, bg = colors.black },
        a = { fg = colors.black, bg = colors.darkmagenta, gui = 'bold' },
    },
    inactive = {
        b = { fg = colors.black, bg = colors.darkblue },
        a = { fg = colors.white, bg = colors.gray, gui = 'bold' },
    },
    replace = {
        b = { fg = colors.darkred, bg = colors.black },
        a = { fg = colors.black, bg = colors.darkred, gui = 'bold' },
        c = { fg = colors.white, bg = colors.darkgray },
    },
    insert = {
        b = { fg = colors.darkblue, bg = colors.black },
        a = { fg = colors.black, bg = colors.darkblue, gui = 'bold' },
        c = { fg = colors.white, bg = colors.darkgray },
    },
}

return {
    "https://github.com/nvim-lualine/lualine.nvim.git",
    dependencies = { "https://github.com/nvim-tree/nvim-web-devicons.git" },
    -- Set our custom theme and ignore NvimTree and toggleterm buffers
    opts = { options = { theme = habamax, disabled_filetypes = { "NvimTree", "toggleterm" } } }
}
