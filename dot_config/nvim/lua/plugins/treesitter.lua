-- ============================================================================
-- TREESITTER (SYNTAX HIGHLIGHTING)
-- ============================================================================
-- Keep treesitter in VSCode for text objects, but disable highlighting (VSCode handles that)
return { -- Highlight, edit, and navigate code
{
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
        ensure_installed = {"bash", "c", "diff", "html", "lua", "luadoc", "markdown", "vim", "vimdoc", "typescript",
                            "javascript", "python", "json", "yaml", "tsx"},
        auto_install = true,
        highlight = {
            enable = not vim.g.vscode, -- Disable highlighting in VSCode, let VSCode handle it
            -- Some languages depend on vim's regex highlighting system (such as Ruby) for indent rules.
            --  If you are experiencing weird indenting issues, add the language to
            --  the list of additional_vim_regex_highlighting and disabled languages for indent.
            additional_vim_regex_highlighting = {"ruby"}
        },
        indent = {
            enable = true,
            disable = {"ruby"}
        }
    },
    config = function(_, opts)
        ---@diagnostic disable-next-line: missing-fields
        require("nvim-treesitter.configs").setup(opts)
    end
}}
