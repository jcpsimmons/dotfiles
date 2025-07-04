-- ============================================================================
-- LAZY.NVIM SETUP
-- ============================================================================
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    vim.fn.system({"git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath})
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup("plugins", {
    ui = {
        -- If you are using a Nerd Font: set icons to an empty table which will use the
        -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
        icons = vim.g.have_nerd_font and {} or {
            cmd = "⌘",
            config = "🛠",
            event = "📅",
            ft = "📂",
            init = "⚙",
            keys = "🗝",
            plugin = "🔌",
            runtime = "💻",
            require = "🌙",
            source = "📄",
            start = "🚀",
            task = "📌",
            lazy = "💤 "
        }
    }
})

-- ============================================================================
-- WORK CONFIGURATION
-- ============================================================================
local home = os.getenv("HOME")
local workconfig_path = home .. "/.config/nvim/workconfig.lua"

-- Check if the workconfig.lua file exists
local file_exists = function(path)
    local f = io.open(path, "r")
    if f then
        f:close()
        return true
    end
    return false
end

if file_exists(workconfig_path) then
    WorkConfig = dofile(workconfig_path)
    if WorkConfig and WorkConfig.codeium_server_config then
        WorkConfig.codeium_server_config()
    end
    -- Note: Plugin config loading is now handled by lazy.nvim's plugin discovery
end
