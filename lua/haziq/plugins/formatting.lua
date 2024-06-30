return {
   "stevearc/conform.nvim", -- Short plugin URL
   event = { "BufReadPre", "BufNewFile" }, -- Will only require this during Lazy load Buffer
   config = function()
      local conform = require("conform")

      conform.setup({
         formatters_by_ft = { -- to specify the formatting for each of the file type
            javascript = { "prettier" },
            typescript = { "prettier" },
            javascriptreact = { "prettier" },
            typescriptreact = { "prettier" },
            svelte = { "prettier" },
            css = { "prettier" },
            html = { "prettier" },
            json = { "prettier" },
            yaml = { "prettier" },
            graphql = { "prettier" },
            liquid = { "prettier" },
            lua = { "stylua" },
            python = { "isort", "black" },
         },
         format_on_save = {
            lsp_fallback = true,
            async = false,
            timeout_ms = 1000,
         },
      })

      vim.keymap.set({ "n", "v" }, "<leader>mp", function() -- to allow format a specific range of text
         conform.format({
            lsp_fallback = true,
            async = false,
            timeout_ms = 1000,
         })
      end, { desc = "Format file or range (in visual mode)" })
   end,
}
