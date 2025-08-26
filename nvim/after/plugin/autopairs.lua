local npairs = require('nvim-autopairs')
npairs.setup({
  check_ts = true, -- use Treesitter to decide when to disable pairs
})

-- Integrate with cmp so that autopairs also works when confirming
-- completion items.
local cmp          = require('cmp')
local cmp_autopairs= require('nvim-autopairs.completion.cmp')
cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())

