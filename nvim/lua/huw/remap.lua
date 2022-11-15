local nnoremap = require("huw.keymap").nnoremap

nnoremap("<leader>pv", "<cmd>Ex<CR>")
nnoremap("<leader>ff", "<cmd>Telescope find_files<CR>")
nnoremap("<leader>fg", "<cmd>Telescope live_grep<CR>")
nnoremap("<leader>fb", "<cmd>Telescope buffers<CR>")
nnoremap("<leader>hm", "<cmd>lua require('harpoon.mark').add_file()<CR>")
nnoremap("<leader>hh", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>")
nnoremap("<leader>tr", "<cmd>tabn<CR>")
nnoremap("<leader>tl", "<cmd>tabp<CR>")
