vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.keymap.set('n', '<leader>u', ':UndotreeToggle<CR>')

-- to allow to copy to system paste buffer
vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>Y', '"+Y')

vim.keymap.set('n', 'Q', '<nop>')
vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set('n', '<C-j>', '<C-d>zz')
vim.keymap.set('n', '<C-k>', '<C-u>zz')
vim.keymap.set('n', '<C-l>', '$')
vim.keymap.set('n', '<C-h>', '0')
vim.keymap.set('v', '<C-l>', '$')
vim.keymap.set('v', '<C-h>', '0')
vim.keymap.set('n', '<C-n>', ':cnext<CR>')
vim.keymap.set('n', '<C-p>', ':cprevious<CR>')

local function hide_diagnostics()
  vim.diagnostic.config { -- https://neovim.io/doc/user/diagnostic.html
    virtual_text = false,
    signs = false,
    underline = false,
  }
end
local function show_diagnostics()
  vim.diagnostic.config {
    virtual_text = true,
    signs = true,
    underline = true,
  }
end
vim.keymap.set('n', '<leader>hd', hide_diagnostics)
vim.keymap.set('n', '<leader>sd', show_diagnostics)
