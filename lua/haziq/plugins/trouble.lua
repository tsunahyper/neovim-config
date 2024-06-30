return {
   "folke/trouble.nvim",
   dependencies = {
      "nvim-tree/nvim-web-devicons",
      "folke/todo-comments.nvim",
   },
   config = function()
      require("trouble").setup({})
   end,
   keys = {
      { "<leader>xx", "<cmd>Trouble<CR>", desc = "Open/close trouble list" },
      { "<leader>xw", "<cmd>Trouble diagnostics<CR>", desc = "Open trouble workspace diagnostics" },
      { "<leader>xd", "<cmd>Trouble symbols<CR>", desc = "Open trouble document diagnostics" },
      { "<leader>xq", "<cmd>Trouble quickfix<CR>", desc = "Open trouble quickfix list" },
      { "<leader>xl", "<cmd>Trouble loclist<CR>", desc = "Open trouble location list" },
      { "<leader>xt", "<cmd>Trouble todo<CR>", desc = "Open todos in trouble" },
   },
}
