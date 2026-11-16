return {
  "pablopunk/pi.nvim",
  keys = {
    { "<leader>a", "<cmd>PiAsk<CR>", desc = "Ask pi", mode = "n" },
    { "<leader>a", "<cmd>PiAskSelection<CR>", desc = "Ask pi (selection)", mode = "v" },
  },
  config = function()
    require("pi").setup({})
  end,
}
