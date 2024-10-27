return {
    "nvim-treesitter/nvim-treesitter", 
    build = ":TSUpdate",
    config = function()
        -- Tree Sitter Setup
        local ts_config = require("nvim-treesitter.configs")
        ts_config.setup({
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = true }
        })
    end

}
