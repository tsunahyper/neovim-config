return {
   "folke/todo-comments.nvim", --load plugin URL
   event = { "BufReadPre", "BufNewFile" }, -- lazy load plugin based on these events
   dependencies = { "nvim-lua/plenary.nvim" }, -- mke it planery
   config = function()
      local todo_comments = require("todo-comments")

      -- set keymaps
      local keymap = vim.keymap -- for conciseness

      keymap.set("n", "]t", function() -- to go to the nearest next to-do comment
         todo_comments.jump_next()
      end, { desc = "Next todo comment" })

      keymap.set("n", "[t", function() -- to go to the nearest previous to-do comment
         todo_comments.jump_prev()
      end, { desc = "Previous todo comment" })

      todo_comments.setup()
   end,
}
