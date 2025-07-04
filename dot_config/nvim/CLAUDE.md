# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a modular Neovim configuration that supports **dual-mode operation**:
- **Terminal Mode**: Full-featured Neovim with LSP, completion, formatting, etc.
- **VSCode Mode**: Optimized for VSCode Neovim extension with VSCode handling language intelligence

The configuration automatically detects the environment and loads appropriate plugins accordingly.

## Key Architecture Principles

### Dual-Mode Detection
- Uses `vim.g.vscode` to detect VSCode environment
- Terminal-only plugins return `{}` in VSCode mode
- VSCode-specific keymaps override terminal behavior when in VSCode

### Plugin Loading Strategy
- **Lazy Loading**: Plugins are loaded on-demand using lazy.nvim
- **Modular Design**: Each plugin category is isolated in its own file
- **Conditional Loading**: Plugins check environment and load appropriately

### Configuration Structure

```
init.lua              # Main entry point with work config support
lua/config/           # Core configuration modules
├── lazy.lua          # Lazy.nvim setup and plugin discovery
├── options.lua       # Global vim settings
├── keymaps.lua       # Base keymaps for both modes
├── vscode.lua        # VSCode-specific overrides
└── autocmds.lua      # Autocommands
lua/plugins/          # Plugin configurations (auto-discovered)
├── lsp.lua           # LSP servers (terminal only)
├── formatting.lua    # Code formatting (terminal only)
├── completion.lua    # nvim-cmp (terminal only)
├── ui.lua            # Telescope, Which-key, Lualine
└── [others]          # Various plugin categories
```

## Development Commands

### Plugin Management
```bash
# Install/update plugins
nvim # plugins auto-install on first run

# Update all plugins
:Lazy update

# Check plugin status
:Lazy
```

### LSP and Formatting
```bash
# LSP servers are auto-installed via Mason
# Formatters: stylua, biome, prettierd, nixfmt

# Format file in terminal mode
<leader>f

# In VSCode mode, uses VSCode's formatting
```

## Key Features

### Work Configuration Support
- Optional `workconfig.lua` file for work-specific settings
- Loaded automatically if present
- Supports custom settings and keymaps

### VSCode Integration
- Seamless integration with VSCode Neovim extension
- VSCode handles: LSP, completion, diagnostics, formatting
- Neovim provides: superior text editing, modal editing, text objects
- Shared keymaps that delegate to VSCode actions when appropriate

### Plugin Categories
- **essential.lua**: Core plugins like vim-sleuth
- **writing.lua**: Writing-focused plugins (Goyo, Pencil)
- **ui.lua**: Navigation and UI (Telescope, Which-key, Lualine)
- **lsp.lua**: Language servers (biome, tailwindcss, eslint, lua_ls, etc.)
- **formatting.lua**: Code formatting with Conform
- **completion.lua**: Auto-completion with nvim-cmp
- **git.lua**: Git integration (Blamer)
- **ai.lua**: AI-powered tools (GitHub Copilot)

## Common Keymaps

### Universal (Both Modes)
- `<leader>` = Space
- `<leader>sf` = Search files
- `<leader>sg` = Search by grep
- `<leader>sh` = Search help
- `<leader>/` = Search in current buffer

### Terminal Mode
- `<leader>f` = Format document (uses Conform)
- `gd` = Go to definition (uses LSP)
- `K` = Show hover (uses LSP)

### VSCode Mode
- `<leader>f` = Format document (uses VSCode)
- `gd` = Go to definition (uses VSCode)
- `K` = Show hover (uses VSCode)

## Environment Detection

```lua
-- Check if running in VSCode
if vim.g.vscode then
    -- VSCode-specific behavior
    return {}  -- Don't load terminal plugins
end

-- Terminal-specific behavior
return { plugin_configs }
```

## Troubleshooting

### VSCode Integration
- Ensure `vscode-neovim.neovimExecutablePaths` is set correctly
- Check that recommended VSCode settings from `vscode-settings.json` are applied
- Verify ctrl key passthrough configuration

### Plugin Issues
- Use `:Lazy` to check plugin status
- Use `:checkhealth` to diagnose issues
- Check if plugins are conditionally loaded based on environment

## File Locations

- Main config: `~/.config/nvim/init.lua`
- VSCode settings: `~/.config/nvim/vscode-settings.json`
- Work config: `~/.config/nvim/workconfig.lua` (optional)
- Plugin lock: `~/.config/nvim/lazy-lock.json`