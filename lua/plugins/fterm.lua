local fterm = {}
local lazygit = {}

return {
  "numToStr/FTerm.nvim",
  config = function()
    require("FTerm").setup({
      cmd = os.getenv("SHELL"),
      border = "double",
      dimensions = {
        height = 0.9,
        width = 0.9,
      },
    })

    fterm = require("FTerm")
    lazygit = fterm:new({
      ft = "fterm_lazygit",
      cmd = "lazygit",
    })
  end,
  -- Example keybindings
  vim.keymap.set("n", "<A-i>", '<CMD>lua require("FTerm").toggle()<CR>'),
  vim.keymap.set("t", "<A-i>", '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>'),
  vim.keymap.set("n", "<A-l>", function()
    lazygit:toggle()
  end),
}
