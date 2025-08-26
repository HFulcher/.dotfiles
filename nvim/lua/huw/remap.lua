local map = vim.keymap.set

-- Open explorer
map("n", "<leader>fe", vim.cmd.Ex)

-- Move selected block up and down
map('v', 'J', ":m '>+1<CR>gv=gv")
map('v', 'K', ":m '<-2<CR>gv=gv")

-- Takes line below and appends it to current line with space
map("n", "J", "mzJ`z")

-- Page up and down keep cursor in middle
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- Move through search results keeping cursor in middle
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- Replace selection with contents of default register without yanking
map("x", "<leader>p", [["_dP]])

-- Yank to system clipboard
map({ "n", "v" }, "<leader>y", [["+y]])
map("n", "<leader>Y", [["+Y]])

-- Delete without yanking
map({ "n", "v" }, "<leader>d", [["_d]])

-- Format buffer via LSP or attached formatter
map("n", "<leader>f", vim.lsp.buf.format)

-- Quickfix and location list navigation
map("n", "]q", "<cmd>cnext<CR>zz")
map("n", "[q", "<cmd>cprev<CR>zz")
map("n", "]l", "<cmd>lnext<CR>zz")
map("n", "[l", "<cmd>lprev<CR>zz")

-- Substitue word under curosr throughout current buffer
map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])


-- Better indenting 
map("v", "<", "<gv")
map("v", ">", ">gv")
