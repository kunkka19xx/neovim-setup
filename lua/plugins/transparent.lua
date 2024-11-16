return {
    "xiyaowong/transparent.nvim",
    config = function()
        require("transparent").setup({
            enable = true,
            extra_groups = {
                "Normal",
                "NormalNC",
                "TelescopeBorder",
                "NvimTreeNormal",
            },
        })
        require("transparent").clear_prefix('NeoTree')
        require("transparent").clear_prefix('lualine')
    end,
}
