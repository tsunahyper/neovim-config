-- Plugins to expand or prettify a brackets or list in a tree format
-- E.g. : initial state --> x = [1,2]
-- after state (treesj plugins) --> x = [
-- 1,
-- 2
-- ]
-- Format has been changed

return {
   {
      "Wansmer/treesj",
      keys = {
         "<leader>m",
         "<cmd>TSJToggle<CR>",
         desc = "Toggle Treesitter Join",
      },
      cmd = { "TSJToggle", "TSJSplit", "TSJJoin" },
      opts = { use_default_keymaps = false },
   },
}
