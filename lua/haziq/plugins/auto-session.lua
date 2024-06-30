return {
   "rmagatti/auto-session", -- plugin url to restore neovim session easily
   config = function()
      local auto_session = require("auto-session") -- load auto-session plugins

      auto_session.setup({
         auto_restore_enabled = true, -- enable if require the session to be saved automatically
         auto_session_suppress_dirs = { "~/", "~/Dev/", "~/Downloads", "~/Documents", "~/Desktop/" }, -- specify directories that we want to ignore
      })

      local keymap = vim.keymap

      keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" }) -- restore last workspace session for current directory
      keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root dir" }) -- save workspace session for current working directory
   end,
}
