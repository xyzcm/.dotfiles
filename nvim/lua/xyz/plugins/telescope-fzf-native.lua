return {
  "nvim-telescope/telescope-fzf-native.nvim",
  build = "make",
  config = function()
    require("telescope").setup({})
    require("telescope").load_extension("fzf")
  end,
}
