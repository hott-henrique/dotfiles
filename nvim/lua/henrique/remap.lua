-- Leader pv open files explorer.
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move selection up and down and ident.
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Merge below line and keep cursor position.
vim.keymap.set("n", "J", "mzJ`z")

-- Move up/down and keep cursor centered.
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

--
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

--
vim.keymap.set("x", "<leader>p", [["_dP]])

--
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Ctrl+c == esc
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Movement in insert mode with ctrl+h/j/k/l
vim.keymap.set("i", "<C-k>", "<Up>")
vim.keymap.set("i", "<C-j>", "<Down>")
vim.keymap.set("i", "<C-h>", "<Left>")
vim.keymap.set("i", "<C-l>", "<Right>")

-- Add empty line up below/above without move the cursor.
-- Work with numbers to add more than one.
vim.keymap.set("n", "<Leader>o", ":<C-u>call append(line(\".\"),   repeat([\"\"], v:count1))<CR>")
vim.keymap.set("n", "<Leader>O", ":<C-u>call append(line(\".\")-1, repeat([\"\"], v:count1))<CR>")

