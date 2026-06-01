return {
    "ThePrimeagen/refactoring.nvim",
    -- Pinned: commits after this require Neovim 0.12 (use built-in `require "async"`).
    commit = "6784b54587e6d8a6b9ea199318512170ffb9e418",
    dependencies = {
        {"nvim-lua/plenary.nvim"},
        {"nvim-treesitter/nvim-treesitter"}
    },
    config = function()
        require("refactoring").setup({})
    end
}