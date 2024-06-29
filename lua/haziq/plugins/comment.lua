return {
  "numToStr/Comment.nvim", -- load the plugin URL
  event = { "BufReadPre", "BufNewFile" }, -- lazy load the plugin whenever open a new buffer or buffer of an existing file 
  dependencies = {
    "JoosepAlviste/nvim-ts-context-commentstring", -- properly commenting code
  },
  config = function()
    -- import comment plugin safely
    local comment = require("Comment")

    local ts_context_commentstring = require("ts_context_commentstring.integrations.comment_nvim")

    -- enable comment
    comment.setup({
      -- for commenting tsx, jsx, svelte, html files
      pre_hook = ts_context_commentstring.create_pre_hook(),
    })
  end,
}
