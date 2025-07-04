-- ============================================================================
-- AUTOCOMMANDS
-- ============================================================================
-- Highlight text when yanking
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking (copying) text",
    group = vim.api.nvim_create_augroup("kickstart-highlight-yank", {
        clear = true
    }),
    callback = function()
        vim.highlight.on_yank()
    end
})

-- TypeScript/JavaScript formatting on save
-- Only create this autocommand in terminal mode - VSCode handles formatting
if not vim.g.vscode then
    local autocmd = vim.api.nvim_create_autocmd
    local Format = vim.api.nvim_create_augroup("Format", {
        clear = true
    })
    autocmd("BufWritePre", {
        group = Format,
        pattern = "*.ts,*.tsx,*.jsx,*.js",
        callback = function(args)
            vim.cmd("TSToolsOrganizeImports sync") -- sync keyword avoids race condition
            vim.cmd("TSToolsAddMissingImports sync")
            require("conform").format({
                bufnr = args.buf
            })
        end
    })
end
