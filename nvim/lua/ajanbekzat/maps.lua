vim.g.mapleader = ' '
local keymap = vim.keymap
keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- New tab
keymap.set('n', 'te', ':tabedit')
-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')
-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
local opts = { noremap = true, silent = true }
keymap.set('n', '<C-Left>', ":vertical resize -2<CR>", opts)
keymap.set('n', '<C-Right>', ":vertical resize +2<CR>", opts)
keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)

-- Navigate into toggleterm and out
keymap.set("n", "<C-y>", ":ToggleTerm size=20 dir=current direction=horizontal", opts)
keymap.set('t', 'sl', '<C-\\><C-N><C-l>', opts)
keymap.set('t', 'sk', '<C-\\><C-N><C-k>', opts)
keymap.set('t', 'sj', '<C-\\><C-N><C-j>', opts)
keymap.set('t', 'sh', '<C-\\><C-N><C-h>', opts)


-- Keep centered with C-u and C-d
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
-- Centered while searching word
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- vim.g.mapleader = ' '
-- keymap.set("i", "jk", "<Esc>", { noremap = false })
