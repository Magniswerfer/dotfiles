return {
    "nvim-treesitter/nvim-treesitter", 
    build = ":TSUpdate",
    config = function()
        -- Tree Sitter Setup
        local ts_config = require("nvim-treesitter.configs")
        ts_config.setup({
            ensure_installed = {"lua", "javascript"},
            highlight = { enable = true },
            indent = { enable = true }
        })
    end

}
