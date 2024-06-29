return {
  "lukas-reineke/indent-blankline.nvim", -- load plugin url
  event = { "BufReadPre", "BufNewFile" },
  main = "ibl", -- Lazy.nvim knows how to acquire the main module
  opts = {
    indent = { char = "┊" }, -- Specific character that we're gonna use for the left indentation as a guide
  },
}
