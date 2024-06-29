return {
  "folke/which-key.nvim",
  event = "VeryLazy", -- to make nvim knows taht it can reload this file later as it is not a priority
  init = function() -- runs during neovim startup instead of during it loads
    vim.o.timeout = true
    vim.o.timeoutlen = 500 -- for the nvim to wait for the comand to be inputted before it dies in 500ms
  end,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
}
