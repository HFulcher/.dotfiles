local nnoremap = require("huw.keymap").nnoremap

nnoremap("<leader>fe", "<cmd>Ex<CR>")
nnoremap("<leader>ff", "<cmd>Telescope find_files<CR>")
nnoremap("<leader>fg", "<cmd>Telescope live_grep<CR>")
nnoremap("<leader>fb", "<cmd>Telescope buffers<CR>")

nnoremap("<leader>hm", "<cmd>lua require('harpoon.mark').add_file()<CR>")
nnoremap("<leader>hh", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>")

nnoremap("<leader>tr", "<cmd>tabn<CR>")
nnoremap("<leader>tl", "<cmd>tabp<CR>")

nnoremap("<leader>sh", "<cmd>split<CR>")
nnoremap("<leader>sv", "<cmd>vsplit<CR>")
nnoremap("<C-j>", "<C-w>j")
nnoremap("<C-k>", "<C-w>k")
nnoremap("<C-h>", "<C-w>h")
nnoremap("<C-l>", "<C-w>l")
nnoremap("<C-Up>", "<cmd>resize -2<CR>")
nnoremap("<C-Down>", "<cmd>resize +2<CR>")
nnoremap("<C-Left>", "<cmd>vertical resize -2<CR>")
nnoremap("<C-Right>", "<cmd>vertical resize +2<CR>")

nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")
