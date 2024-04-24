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
        -- require("none-ls.diagnostics.eslint_d"), -- requires none-ls-extras.nvim
      },
    })
    vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {})
  end,
}
