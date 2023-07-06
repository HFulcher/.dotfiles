local neogit = require('neogit')
local nnoremap = require('huw.keymap').nnoremap

neogit.setup {}

nnoremap("<leader>ngs", function ()
    neogit.open({ })
end);

