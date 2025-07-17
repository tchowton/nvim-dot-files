return {
  -- Add nvim-autopairs to your LazyVim setup
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter", -- Load only in insert mode
    config = function()
      require("nvim-autopairs").setup({
        -- Enable any desired settings
        check_ts = true, -- Use treesitter to check for valid pairings
      })
    end,
  },
}
