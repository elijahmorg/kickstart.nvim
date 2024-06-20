-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
-- vim.keymap.set('i', 'sd', '<Esc>', {})
-- vim.keymap.set('n', '<leader>pv', ":Explore", {})
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
-- vim.keymap.set({'i','n','v'}, "<c-s>", ":update<cr>", { silent = true})

-- <ctrl-s> to Save
vim.keymap.set({ 'n', 'v', 'i' }, '<C-S>', '<C-c>:update<cr>', { silent = true, desc = 'Save' })
-- vim.keymap.set("v", "<leader>p", vim.cmd.Ex)

vim.keymap.set('n', 'J', 'mzJ`z')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- get name of current file
vim.keymap.set('n', '<leader>pf', vim.api.nvim_buf_get_name(0), { desc = ' [P]rint [F]ilepath ' })
vim.keymap.set('n', '<leader>cpf', function()
  vim.fn.setreg('5', vim.api.nvim_buf_get_name(0))
end, { desc = '[C]opy [P]rint [F]ilepath ' })

-- greatest remap ever
vim.keymap.set('x', '<leader>p', [["_dP]])

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
