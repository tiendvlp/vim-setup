vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>e", ":nohls<CR>")
keymap.set("n", "<leader>nh", ":nohl<CR>")
keymap.set("n", "<leader>sv", "<C-w>v") -- split right equal width
keymap.set("n", "<leader>sh", "<C-w>s") -- split bottom equal height
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window
keymap.set("n", "<leader>ss", "<C-w>w") -- switch between windows
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- maximize/restore window size

-- tab
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- go to current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to prev tab

-- viewtree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
keymap.set("n", "<leader>ec", ":NvimTreeClose<CR>")

--telescope
local builtin = require("telescope.builtin")
keymap.set("n", "<Leader>ff", builtin.find_files, {})
keymap.set("n", "<leader>fs", builtin.live_grep, {})
keymap.set("n", "<leader>fb", builtin.buffers, {})
keymap.set("n", "<leader>fh", builtin.help_tags, {})

--vimspector
keymap.set("n", "<leader>Db", ":call vimspector#ToggleBreakpoint()<cr>")
keymap.set("n", "<leader>Dw", ":call vimspector#AddWatch()<cr>")
keymap.set("n", "<leader>De", ":call vimspector#Evaluate()<cr>")
