return {
    "nvim-lualine/lualine.nvim",
    config = function()
        require("lualine").setup({
            options = {
                theme = "dracula",
            },
        })
    end,
    require('transparent').clear_prefix('lualine')
}
