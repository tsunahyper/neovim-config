return {
  "akinsho/bufferline.nvim", -- add the plugin url
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- add dependencies field using devicons with bufferline
  version = "*", -- version to asterisk
  opts = { -- gets passed to the setup function for bufferline
    options = {
      mode = "tabs", -- so that neovim retains the default tabbing functionality
      separator_style = "slant" -- add separator with slant style
    },
  },
}
