-- ============================================================================
-- WRITING & FOCUS PLUGINS
-- ============================================================================
return {{
    "junegunn/goyo.vim",
    dependencies = {"preservim/vim-pencil", "arnamak/stay-centered.nvim"},
    cmd = "Goyo",
    keys = {{
        "<leader>z",
        "<cmd>Goyo<CR>",
        desc = "[Z]en mode"
    }},
    config = function()
        -- Define Lua functions for entering and leaving Goyo mode
        local function goyo_enter()
            require("lualine").hide()
            vim.cmd("Pencil")
            vim.cmd("PencilSoft")
            require("stay-centered").toggle()
        end

        local function goyo_leave()
            require("lualine").hide({
                unhide = true
            })
            vim.cmd("PencilOff")
            require("stay-centered").toggle()
        end

        -- Create an augroup for Goyo mode
        local augroup_id = vim.api.nvim_create_augroup("Goyo", {
            clear = true
        })

        -- Define autocommands for GoyoEnter and GoyoLeave
        vim.api.nvim_create_autocmd("User", {
            pattern = "GoyoEnter",
            callback = goyo_enter,
            group = augroup_id
        })

        vim.api.nvim_create_autocmd("User", {
            pattern = "GoyoLeave",
            callback = goyo_leave,
            group = augroup_id
        })
    end
}, {
    "preservim/vim-pencil",
    dependencies = {"godlygeek/tabular"}
}}
