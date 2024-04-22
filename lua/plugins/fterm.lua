return {
'numToStr/FTerm.nvim',
  config = function()
    local fish_shell = "usr/local/bin/fish"
require('FTerm').setup({
      cmd = os.getenv(fish_shell),
    border = 'double',
    dimensions  = {
        height = 0.9,
        width = 0.9,
    },
})
  end,
-- Example keybindings
vim.keymap.set('n', '<A-i>', '<CMD>lua require("FTerm").toggle()<CR>'),
vim.keymap.set('t', '<A-i>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
}
