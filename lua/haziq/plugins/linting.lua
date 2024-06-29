return {
   "mfussenegger/nvim-lint", -- specify short plugin url
   event = { "BufReadPre", "BufNewFile" },
   config = function()
      local lint = require("lint")

      lint.linters_by_ft = { -- specify the filetype to use the formatter of lint
         javascript = { "eslint_d" },
         typescript = { "eslint_d" },
         javascriptreact = { "eslint_d" },
         typescriptreact = { "eslint_d" },
         svelte = { "eslint_d" },
         python = { "pylint" },
      }

      local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true }) -- setup auto commands to trigger the linting on neovim events

      vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
         group = lint_augroup,
         callback = function()
            lint.try_lint()
         end,
      })

      vim.keymap.set("n", "<leader>l", function()
         lint.try_lint()
      end, { desc = "Trigger linting for current file" })
   end,
}
