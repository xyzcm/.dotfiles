return {
  --linting and formatting
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettierd,
        -- null_ls.builtins.diagnostics.selene,
        null_ls.builtins.diagnostics.markuplint,
        null_ls.builtins.diagnostics.stylelint,
        null_ls.builtins.diagnostics.eslint_d,
      },
    })
    vim.keymap.set("n", "<leader>m", vim.lsp.buf.format, {})
				--[[ vim.keymap.set("n", "<leader>f", function()
					vim.lsp.buf.format({ async = true })
				end, {}) ]]
  end,
}
