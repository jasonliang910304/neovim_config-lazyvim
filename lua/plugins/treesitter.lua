return{
        "nvim-treesitter/nvim-treesitter",
        opts = function(_, opts)
                if type(opts.ensure_installed) == "table" then
                        vim.list_extend(opts.ensure_installed, {"c", "cpp"})
                        opts.ensure_installed = opts.ensure_installed or {}
                        vim.list_extend(opts.ensure_installed, { "java" })
                        vim.list_extend(opts.ensure_installed, { "ninja", "python", "rst", "toml" })
                        vim.list_extend(opts.ensure_installed, { "markdown", "markdown_inline" })
                end
        end
}
