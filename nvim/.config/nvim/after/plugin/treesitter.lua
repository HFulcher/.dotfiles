require('nvim-treesitter.configs').setup {
    ensure_installed = { "lua", "bash", "cmake", "comment", "css", "diff", "dockerfile", "git_rebase", "gitattributes", "gitignore", "go", 'hcl', "html", "http", "javascript", "jsdoc", "json", "json5", "lua", "markdown", "python", "regex", "scss", "sql", "tsx", "typescript", "vim", "yaml" },
    auto_install = true,
    highlight = {
        enable = true
    }
}
