local M = {}

function M.log(msg, hl, name)
    name = name or "Neovim"
    hl = hl or "Todo"
    vim.api.nvim_echo({ { name .. ": ", hl }, { msg } }, true, {})
end

function M.info(msg, name)
    vim.notify(msg, vim.log.levels.INFO, { title = name })
end

return M
