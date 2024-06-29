return {
  "szw/vim-maximizer", -- load the plugin url
  keys = { -- tells the lazy.nvim to lazy load this plugin
    { "<leader>sm", "<cmd>MaximizerToggle<CR>", desc = "Maximize/minimize a split" }, -- whenever these keymaps are executed
  },
}
