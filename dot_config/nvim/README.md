# Neovim Configuration Structure

This is a modular Neovim configuration organized for maintainability and clarity.

## Structure

```
~/.config/nvim/
├── init.lua                 # Main entry point
├── init_backup.lua          # Backup of original monolithic config
├── lazy-lock.json           # Lazy.nvim lock file
└── lua/
    ├── config/              # Core configuration modules
    │   ├── autocmds.lua     # Autocommands
    │   ├── keymaps.lua      # Key mappings
    │   ├── lazy.lua         # Lazy.nvim setup
    │   └── options.lua      # Vim options
    └── plugins/             # Plugin configurations
        ├── ai.lua           # AI & productivity (Copilot)
        ├── autoclose.lua    # Auto-close brackets
        ├── completion.lua   # nvim-cmp completion
        ├── dashboard.lua    # Alpha dashboard
        ├── editing.lua      # Editing plugins (Comment.nvim)
        ├── essential.lua    # Essential plugins (vim-sleuth)
        ├── explorer.lua     # File explorer (Neo-tree)
        ├── formatting.lua   # Code formatting (Conform)
        ├── git.lua          # Git integration (Blamer)
        ├── lsp.lua          # LSP configuration
        ├── terminal.lua     # Terminal integration (Floaterm)
        ├── themes.lua       # Themes & appearance
        ├── transparency.lua # Transparent background
        ├── treesitter.lua   # Syntax highlighting
        ├── typescript.lua   # TypeScript tools
        ├── ui.lua           # UI plugins (Which-key, Telescope)
        └── writing.lua      # Writing plugins (Goyo, Pencil)
```

## Plugin Categories

### Core Configuration

- **options.lua**: Global vim settings, UI options, editor behavior
- **keymaps.lua**: Key mappings for navigation, diagnostics, and general use
- **autocmds.lua**: Autocommands for highlighting yanked text and TypeScript formatting
- **lazy.lua**: Lazy.nvim setup and plugin loading configuration

### Plugin Modules

- **essential.lua**: Essential plugins like vim-sleuth for auto-indentation
- **writing.lua**: Writing and focus plugins (Goyo, Pencil, Stay-centered)
- **terminal.lua**: Terminal integration with Floaterm
- **editing.lua**: Editing enhancements (Comment.nvim)
- **ui.lua**: UI and navigation (Which-key, Telescope, Lualine)
- **lsp.lua**: LSP configuration with Mason and multiple language servers
- **formatting.lua**: Code formatting with Conform
- **completion.lua**: Auto-completion with nvim-cmp and LuaSnip
- **themes.lua**: Colorschemes, theme-related plugins, and appearance
- **treesitter.lua**: Syntax highlighting and code parsing
- **dashboard.lua**: Alpha dashboard with custom logo and quotes
- **ai.lua**: AI-powered productivity tools (GitHub Copilot)
- **transparency.lua**: Transparent background support
- **explorer.lua**: File explorer (Neo-tree)
- **typescript.lua**: TypeScript-specific tools
- **autoclose.lua**: Auto-close brackets and quotes
- **git.lua**: Git integration (Blamer)

## Features

- **Modular design**: Each plugin category is in its own file
- **Lazy loading**: Plugins are loaded only when needed
- **Work configuration**: Supports additional work-specific plugins via `workconfig.lua`
- **Comprehensive LSP**: Support for multiple languages including TypeScript, Lua, Tailwind, etc.
- **Writing mode**: Distraction-free writing with Goyo and Pencil
- **Modern UI**: Telescope for fuzzy finding, Which-key for keybinding help

## Usage

The configuration will automatically load all plugin modules. To add new plugins:

1. Add the plugin to the appropriate category file in `lua/plugins/`
2. If creating a new category, create a new file in `lua/plugins/` and return a table of plugin specs
3. The plugin will be automatically discovered by lazy.nvim

## Author

Configuration by jcpsimmons
