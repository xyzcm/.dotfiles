return {
  "barrett-ruth/live-server.nvim",
  build = "npm add -g live-server",
  cmd = { "LiveServerStart", "LiveServerStop" },
  opts = {
    --[[     Usage: live-server [-v|--version] [-h|--help] [-q|--quiet] [--port=PORT] [--host=HOST] [--open=PATH] [--no-browser] [--browser=BROWSER] [--ignore=PATH] [--ignorePattern=RGXP] [--no-css-inject] [--entry-file=PATH] [--spa] [--mount=ROUTE:PATH] [--wait=MILLISECONDS] [--htpasswd=PATH] [--cors] [--https=PATH] [--https-module=MODULE_NAME] [--proxy=PATH] [PATH] ]]
    -- E.g. args = {"--port=8080", "--browser=firefox"}
    args = { "--browser=firefox" },
  vim.keymap.set("n", "<leader>ls", ":LiveServerStart<CR>", {}),
  vim.keymap.set("n", "<leader>lx", ":LiveServerStop<CR>", {}),
  },
}
