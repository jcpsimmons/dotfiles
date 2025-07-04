# 🚀 Comprehensive NeoVim Configuration

A powerful, modular Neovim configuration that seamlessly operates in both terminal and VSCode environments. This configuration combines the best of both worlds: VSCode's language intelligence with Neovim's superior text editing capabilities.

## 📋 Table of Contents

- [🚀 Comprehensive NeoVim Configuration](#-comprehensive-neovim-configuration)
  - [📋 Table of Contents](#-table-of-contents)
  - [⚡ Quick Start](#-quick-start)
  - [🏗️ Installation & Setup](#️-installation--setup)
  - [🎯 Core Philosophy](#-core-philosophy)
  - [🌟 Key Features](#-key-features)
  - [🔧 Dual-Mode Operation](#-dual-mode-operation)
  - [📁 Configuration Structure](#-configuration-structure)
  - [🔌 Plugin Reference](#-plugin-reference)
  - [⌨️ Complete Keybindings Cheatsheet](#️-complete-keybindings-cheatsheet)
  - [📝 Writing Mode Guide](#-writing-mode-guide)
  - [💻 Development Features](#-development-features)
  - [🖥️ Terminal Integration](#️-terminal-integration)
  - [🔄 Git Integration](#-git-integration)
  - [🤖 AI Features](#-ai-features)
  - [🛠️ VSCode Setup](#️-vscode-setup)
  - [🎨 Customization Guide](#-customization-guide)
  - [💼 Work Configuration](#-work-configuration)
  - [🔍 Troubleshooting](#-troubleshooting)
  - [⚡ Performance Tips](#-performance-tips)
  - [🔧 Advanced Usage](#-advanced-usage)
  - [👤 Author](#-author)

## ⚡ Quick Start

1. **Install Neovim** (version 0.10+ required)
2. **Backup existing config**: `mv ~/.config/nvim ~/.config/nvim.backup`
3. **Clone this configuration**: `git clone <this-repo> ~/.config/nvim`
4. **Launch Neovim**: `nvim` (plugins will auto-install on first run)
5. **Check health**: `:checkhealth` to verify everything is working

## 🏗️ Installation & Setup

### Prerequisites

- **Neovim 0.10+** (required for modern Lua features)
- **Git** (for plugin management)
- **Node.js 18+** (for LSP servers and GitHub Copilot)
- **Nerd Font** (for icons - set `vim.g.have_nerd_font = true` in init.lua)

### Optional Dependencies

- **make** (for Telescope fzf-native)
- **ripgrep** (for better grep performance)
- **fd** (for faster file finding)
- **bat** (for better file previews)

### Installation Steps

1. **Install Neovim**:
   ```bash
   # macOS
   brew install neovim
   
   # Linux (Ubuntu/Debian)
   sudo apt install neovim
   
   # Linux (Arch)
   sudo pacman -S neovim
   ```

2. **Backup existing configuration**:
   ```bash
   mv ~/.config/nvim ~/.config/nvim.backup
   ```

3. **Clone this configuration**:
   ```bash
   git clone <this-repo> ~/.config/nvim
   ```

4. **Launch Neovim**:
   ```bash
   nvim
   ```
   
   On first launch, Lazy.nvim will automatically install all plugins. This may take a few minutes.

5. **Verify installation**:
   ```vim
   :checkhealth
   ```

## 🎯 Core Philosophy

This configuration is built on these core principles:

1. **Dual-Mode Excellence**: Optimized for both terminal and VSCode environments
2. **Modular Design**: Each feature is isolated and can be easily modified
3. **Lazy Loading**: Plugins load only when needed for fast startup
4. **Sensible Defaults**: Works great out of the box with minimal configuration
5. **Extensible Architecture**: Easy to customize and extend for personal needs

## 🌟 Key Features

- **🎭 Dual-Mode Support**: Seamless operation in terminal and VSCode
- **⚡ Blazing Fast**: Lazy loading and optimized plugin configuration
- **🌈 Beautiful UI**: Modern colorscheme with transparent background support
- **📝 Writing Mode**: Distraction-free writing with Goyo and Pencil
- **🤖 AI Integration**: GitHub Copilot for intelligent code suggestions
- **🔍 Powerful Search**: Telescope for fuzzy finding everything
- **🎨 Rich Syntax**: Treesitter for advanced syntax highlighting
- **🛠️ Complete LSP**: Support for TypeScript, Lua, Tailwind, and more
- **🎯 Smart Completion**: Context-aware autocompletion
- **📱 Terminal Integration**: Floating terminal with Floaterm
- **🔄 Git Integration**: Inline blame and git workflows
- **📊 Dashboard**: Beautiful startup screen with ASCII art

## 🔧 Dual-Mode Operation

This configuration automatically detects whether it's running in terminal or VSCode and adapts accordingly:

### Terminal Mode
- **Full-featured Neovim** with all bells and whistles
- Complete LSP setup with Mason
- Advanced completion with nvim-cmp
- Code formatting with Conform
- File explorer with Neo-tree
- Beautiful dashboard with Alpha
- All plugins and features enabled

### VSCode Mode
- **Optimized for VSCode Neovim extension**
- VSCode handles: LSP, completion, diagnostics, formatting
- Neovim provides: Superior text editing, motions, text objects
- Keeps: Telescope, Which-key, text objects, editing plugins
- Disables: LSP servers, completion, formatters, file explorer, dashboard

## 📁 Configuration Structure

```
~/.config/nvim/
├── init.lua                 # 🚀 Main entry point with work config support
├── init_backup.lua          # 💾 Backup of original monolithic config
├── lazy-lock.json           # 🔒 Lazy.nvim lock file (version control)
├── CLAUDE.md                # 🤖 Claude AI development guidance
├── README.md                # 📖 This comprehensive documentation
└── lua/
    ├── config/              # ⚙️ Core configuration modules
    │   ├── autocmds.lua     # 🔄 Autocommands and auto-behaviors
    │   ├── keymaps.lua      # ⌨️ Base key mappings
    │   ├── lazy.lua         # 📦 Lazy.nvim plugin manager setup
    │   ├── options.lua      # 🎛️ Vim options and settings
    │   └── vscode.lua       # 💻 VSCode-specific overrides (if needed)
    └── plugins/             # 🔌 Plugin configurations (auto-discovered)
        ├── ai.lua           # 🤖 AI & productivity (GitHub Copilot)
        ├── autoclose.lua    # 🔧 Auto-close brackets and quotes
        ├── completion.lua   # 💭 nvim-cmp completion (terminal only)
        ├── dashboard.lua    # 🎨 Alpha dashboard (terminal only)
        ├── editing.lua      # ✏️ Editing plugins (Comment.nvim)
        ├── essential.lua    # ⚡ Essential plugins (vim-sleuth)
        ├── explorer.lua     # 📁 File explorer (terminal only)
        ├── formatting.lua   # 🎯 Code formatting (terminal only)
        ├── git.lua          # 🌿 Git integration (Blamer)
        ├── lsp.lua          # 🔧 LSP configuration (terminal only)
        ├── terminal.lua     # 🖥️ Terminal integration (Floaterm)
        ├── themes.lua       # 🌈 Themes & appearance
        ├── transparency.lua # 🔮 Transparent background
        ├── treesitter.lua   # 🌳 Syntax highlighting
        ├── typescript.lua   # 📘 TypeScript tools
        ├── ui.lua           # 🎪 UI plugins (Which-key, Telescope)
        └── writing.lua      # 📝 Writing plugins (Goyo, Pencil)
```

### Key Configuration Files

| File | Purpose | Environment |
|------|---------|-------------|
| `init.lua` | Main entry point, work config loader | Both |
| `options.lua` | Vim settings, UI options, editor behavior | Both |
| `keymaps.lua` | Base keybindings for navigation and editing | Both |
| `autocmds.lua` | Autocommands for highlighting, formatting | Both |
| `lazy.lua` | Plugin manager setup and discovery | Both |

## 🔌 Plugin Reference

### Core Configuration Modules

#### 🎛️ Options (`options.lua`)
- **Line numbers**: Relative and absolute line numbering
- **Editor behavior**: Smart case search, clipboard integration
- **UI settings**: Cursor line, sign column, scroll offset
- **Indentation**: 2-space tabs with smart indentation

#### ⌨️ Keymaps (`keymaps.lua`)
- **Base keybindings**: Window navigation, diagnostics
- **Search**: Clear search highlighting with `<Esc>`
- **Terminal**: Easy terminal mode exit
- **Helpful hints**: Disabled arrow keys with guidance

#### 🔄 Autocmds (`autocmds.lua`)
- **Yank highlighting**: Visual feedback when copying text
- **TypeScript formatting**: Auto-format on save (terminal only)
- **Import organization**: Auto-organize imports for TS/JS

### Plugin Categories

#### ⚡ Essential Plugins (`essential.lua`)
- **vim-sleuth**: Automatic indentation detection
- **Purpose**: Adapts to project indentation style
- **Benefit**: No more manual indentation configuration

#### 🎪 UI & Navigation (`ui.lua`)
- **Which-key**: Keybinding help and organization
- **Telescope**: Fuzzy finding for files, grep, help, etc.
- **Lualine**: Beautiful status line (terminal only)
- **Key Features**:
  - Smart VSCode integration for file/grep search
  - Extensible search capabilities
  - Visual keybinding guidance

#### 📝 Writing Mode (`writing.lua`)
- **Goyo**: Distraction-free writing environment
- **Pencil**: Enhanced writing experience
- **Stay-centered**: Keeps cursor centered while writing
- **Trigger**: `<leader>z` for zen mode
- **Benefits**: Perfect for documentation, articles, notes

#### 🖥️ Terminal Integration (`terminal.lua`)
- **Floaterm**: Floating terminal windows
- **Keybindings**:
  - `<leader>tn`: New terminal
  - `<leader>tt`: Toggle terminal
  - `<leader>tk`: Kill terminal
  - `<leader>tl/th`: Navigate terminals

#### ✏️ Editing Enhancements (`editing.lua`)
- **Comment.nvim**: Smart comment toggling
- **Features**: Language-aware commenting
- **Usage**: `gcc` for line, `gc` for visual selection

#### 🔧 LSP & Language Support (`lsp.lua`) - Terminal Only
- **Mason**: LSP server management
- **Multiple servers**: TypeScript, Lua, Tailwind, ESLint, etc.
- **Automatic installation**: Servers install on first use
- **Key bindings**:
  - `gd`: Go to definition
  - `gr`: Go to references
  - `K`: Show hover documentation
  - `<leader>ca`: Code actions
  - `<leader>rn`: Rename symbol

#### 🎯 Formatting (`formatting.lua`) - Terminal Only
- **Conform.nvim**: Code formatting
- **Multiple formatters**: Prettier, Stylua, Biome, etc.
- **Format on save**: Automatic formatting
- **Manual trigger**: `<leader>f`

#### 💭 Completion (`completion.lua`) - Terminal Only
- **nvim-cmp**: Intelligent autocompletion
- **LuaSnip**: Snippet support
- **Sources**: LSP, buffer, path, snippets
- **Smart completion**: Context-aware suggestions

#### 🌈 Themes & Appearance (`themes.lua`)
- **Everforest**: Main colorscheme
- **Todo Comments**: Highlight TODO, FIXME, etc.
- **Mini.nvim**: Enhanced text objects
- **Vim Surround**: Bracket/quote manipulation

#### 🌳 Syntax Highlighting (`treesitter.lua`)
- **Nvim-treesitter**: Advanced syntax highlighting
- **Multiple languages**: Auto-install parsers
- **Enhanced features**: Better code understanding

#### 🎨 Dashboard (`dashboard.lua`) - Terminal Only
- **Alpha-nvim**: Beautiful startup screen
- **ASCII art**: Custom logo and inspirational quote
- **Quick actions**: New file, recent files, quit
- **Shortcut**: `<leader>a` to return to dashboard

#### 🤖 AI Integration (`ai.lua`)
- **GitHub Copilot**: AI code suggestions
- **Key bindings**:
  - `<M-l>`: Accept suggestion
  - `<M-]>`: Next suggestion
  - `<M-[>`: Previous suggestion
  - `<M-CR>`: Open panel

#### 🌿 Git Integration (`git.lua`)
- **Blamer**: Inline git blame
- **Toggle**: `<leader>b` for blame information
- **Benefits**: See commit info for each line

#### 🔮 Transparency (`transparency.lua`)
- **Transparent background**: For terminal aesthetics
- **Configurable**: Easy to enable/disable

#### 📘 TypeScript Tools (`typescript.lua`)
- **TypeScript-specific enhancements**
- **Auto-imports**: Organize and add missing imports
- **Enhanced diagnostics**: Better error reporting

#### 🔧 Auto-close (`autoclose.lua`)
- **Automatic bracket/quote closing**
- **Smart pairing**: Maintains balance in code

#### 📁 File Explorer (`explorer.lua`) - Terminal Only
- **Neo-tree**: Modern file explorer
- **Features**: Git integration, file operations
- **Benefits**: Visual file management

## ⌨️ Complete Keybindings Cheatsheet

> 💡 **Tip**: Use `<leader>sk` to search keymaps interactively, or `<leader>` to see available keybindings with Which-key.

### 🎯 Leader Key
- **Leader**: `<Space>` (Spacebar)

### 🔄 Core Navigation & Editing

| Keymap | Mode | Description | Context |
|--------|------|-------------|---------|
| `<Esc>` | Normal | Clear search highlighting | Both |
| `<Esc><Esc>` | Terminal | Exit terminal mode | Both |
| `<C-h/j/k/l>` | Normal | Navigate windows (left/down/up/right) | Both |
| `gcc` | Normal | Toggle line comment | Both |
| `gc` | Visual | Toggle comment selection | Both |

### 📊 Diagnostics & LSP

| Keymap | Mode | Description | Context |
|--------|------|-------------|---------|
| `[d` | Normal | Previous diagnostic | Both |
| `]d` | Normal | Next diagnostic | Both |
| `<leader>e` | Normal | Show diagnostic error | Both |
| `<leader>q` | Normal | Open diagnostic quickfix | Both |
| `gd` | Normal | Go to definition | LSP/VSCode |
| `gr` | Normal | Go to references | LSP/VSCode |
| `gI` | Normal | Go to implementation | Terminal |
| `gD` | Normal | Go to declaration | Terminal |
| `K` | Normal | Show hover documentation | LSP/VSCode |
| `<leader>ca` | Normal | Code actions | LSP/VSCode |
| `<leader>rn` | Normal | Rename symbol | LSP/VSCode |
| `<leader>D` | Normal | Type definition | Terminal |
| `<leader>ds` | Normal | Document symbols | Terminal |
| `<leader>ws` | Normal | Workspace symbols | Terminal |

### 🔍 Search & Navigation (Telescope)

| Keymap | Mode | Description | Context |
|--------|------|-------------|---------|
| `<leader>sf` | Normal | Search files | Both |
| `<leader>sg` | Normal | Search by grep | Both |
| `<leader>sw` | Normal | Search current word | Both |
| `<leader>sh` | Normal | Search help | Both |
| `<leader>sk` | Normal | Search keymaps | Both |
| `<leader>ss` | Normal | Search select telescope | Both |
| `<leader>sd` | Normal | Search diagnostics | Both |
| `<leader>sr` | Normal | Search resume | Both |
| `<leader>s.` | Normal | Search recent files | Both |
| `<leader><leader>` | Normal | Find buffers | Both |
| `<leader>/` | Normal | Search in current buffer | Both |
| `<leader>s/` | Normal | Search in open files | Both |

### 🖥️ Terminal (Floaterm)

| Keymap | Mode | Description | Context |
|--------|------|-------------|---------|
| `<leader>tn` | Normal | New terminal | Both |
| `<leader>tt` | Normal | Toggle terminal | Both |
| `<leader>tk` | Normal | Kill terminal | Both |
| `<leader>tl` | Normal | Next terminal | Both |
| `<leader>th` | Normal | Previous terminal | Both |

### 📝 Writing Mode

| Keymap | Mode | Description | Context |
|--------|------|-------------|---------|
| `<leader>z` | Normal | Toggle zen mode (Goyo) | Both |

### 🌿 Git Integration

| Keymap | Mode | Description | Context |
|--------|------|-------------|---------|
| `<leader>b` | Normal | Toggle git blame | Both |

### 🎯 Formatting

| Keymap | Mode | Description | Context |
|--------|------|-------------|---------|
| `<leader>f` | Normal/Visual | Format buffer/selection | Both |

### 🤖 AI Features (GitHub Copilot)

| Keymap | Mode | Description | Context |
|--------|------|-------------|---------|
| `<M-l>` | Insert | Accept suggestion | Both |
| `<M-]>` | Insert | Next suggestion | Both |
| `<M-[>` | Insert | Previous suggestion | Both |
| `<C-]>` | Insert | Dismiss suggestion | Both |
| `<M-CR>` | Insert | Open copilot panel | Both |

### 🎨 Dashboard

| Keymap | Mode | Description | Context |
|--------|------|-------------|---------|
| `<leader>a` | Normal | Goto dashboard | Terminal |

### 🎪 Which-key Groups

When you press `<leader>`, Which-key shows these groups:

| Group | Icon | Description |
|-------|------|-------------|
| `<leader>t` | 🖥️ | Terminal operations |
| `<leader>g` | 🌿 | Git operations |
| `<leader>l` | 🔧 | LSP operations |
| `<leader>f` | 🎯 | Format operations |
| `<leader>c` | 💬 | Comment operations |
| `<leader>d` | 📄 | Document operations |
| `<leader>r` | 🔄 | Rename operations |
| `<leader>s` | 🔍 | Search operations |
| `<leader>w` | 🏢 | Workspace operations |

### 🚫 Disabled Keys (Educational)

These keys are disabled with helpful messages to encourage proper Vim navigation:

| Key | Message |
|-----|---------|
| `<left>` | "Use h to move!!" |
| `<right>` | "Use l to move!!" |
| `<up>` | "Use k to move!!" |
| `<down>` | "Use j to move!!" |

### 💡 Pro Tips

1. **Use Which-key**: Press `<leader>` and wait to see available options
2. **Telescope everything**: Most searches can be done with `<leader>s*`
3. **Terminal integration**: Use `<leader>t*` for all terminal operations
4. **Writing mode**: Press `<leader>z` for distraction-free writing
5. **Quick file switching**: Use `<leader><leader>` for buffer switching
6. **Search in current buffer**: Use `<leader>/` for fuzzy search in current file

## 📝 Writing Mode Guide

The writing mode transforms Neovim into a distraction-free writing environment, perfect for documentation, articles, and creative writing.

### 🎭 Entering Writing Mode

Press `<leader>z` to toggle **Goyo** (zen mode):

**What happens:**
- 🎨 **Goyo**: Creates a distraction-free writing environment
- ✏️ **Pencil**: Activates enhanced writing features
- 🎯 **Stay-centered**: Keeps cursor centered on screen
- 📊 **Lualine**: Status line gets hidden

### 📚 Writing Features

#### 🔤 Enhanced Text Objects
- **Sentence navigation**: `(` and `)` for sentence boundaries
- **Paragraph navigation**: `{` and `}` for paragraph boundaries
- **Word wrapping**: Intelligent soft wrapping for long lines

#### 📝 Pencil Plugin Features
- **Soft line wrap**: Text wraps without breaking words
- **Automatic formatting**: Maintains proper paragraph structure
- **Writing-friendly settings**: Optimized for prose instead of code

#### 🎯 Stay-Centered
- **Cursor centering**: Keeps current line in center of screen
- **Smooth scrolling**: Reduces eye strain during long writing sessions
- **Automatic activation**: Toggles with Goyo mode

### 🎨 Writing Mode Appearance

```
                     ┌─────────────────────────────────────────────┐
                     │                                             │
                     │  Your text appears here in a clean,        │
                     │  distraction-free environment with         │
                     │  proper margins and spacing.               │
                     │                                             │
                     │  The cursor stays centered, making         │
                     │  it easy to focus on your writing.         │
                     │                                             │
                     └─────────────────────────────────────────────┘
```

### 🔄 Exiting Writing Mode

Press `<leader>z` again to exit:

**What happens:**
- 🎨 **Goyo**: Returns to normal editor view
- ✏️ **Pencil**: Deactivates writing mode
- 🎯 **Stay-centered**: Disables cursor centering
- 📊 **Lualine**: Status line returns

### 💡 Writing Mode Tips

1. **Use for documentation**: Great for README files, docs, and guides
2. **Markdown support**: Full markdown syntax highlighting remains active
3. **Spell checking**: Enable with `:set spell` for writing assistance
4. **Focus**: Minimize distractions with clean, centered interface
5. **Combine with terminal**: Use floating terminal for references

## 💻 Development Features

### 🔧 Language Server Protocol (LSP)

The configuration includes comprehensive LSP support for multiple languages:

#### 📦 Supported Languages

| Language | Server | Features |
|----------|---------|----------|
| **TypeScript/JavaScript** | `typescript-language-server` | Full IntelliSense, refactoring |
| **Lua** | `lua-language-server` | Neovim API awareness, completion |
| **Tailwind CSS** | `tailwindcss-language-server` | Class completion, validation |
| **ESLint** | `eslint-lsp` | Linting, auto-fix |
| **Biome** | `biome` | Fast formatting, linting |
| **JSON** | `json-language-server` | Schema validation |
| **HTML** | `html-language-server` | Tag completion, validation |
| **CSS** | `css-language-server` | Property completion, validation |

#### 🛠️ LSP Features

- **Auto-installation**: Mason automatically installs language servers
- **Smart completion**: Context-aware suggestions
- **Inline diagnostics**: Real-time error checking
- **Go to definition**: Jump to function/variable definitions
- **Find references**: See all usages of symbols
- **Rename refactoring**: Safely rename across files
- **Code actions**: Quick fixes and refactoring suggestions
- **Hover documentation**: See documentation without leaving editor

### 🎯 Code Formatting

#### 📝 Formatters

| Language | Formatter | Features |
|----------|-----------|----------|
| **Lua** | `stylua` | Opinionated Lua formatting |
| **TypeScript/JavaScript** | `biome`, `prettierd` | Fast, reliable formatting |
| **CSS/SCSS** | `prettierd` | Style formatting |
| **HTML** | `prettierd` | Template formatting |
| **JSON** | `prettierd` | JSON prettification |
| **Markdown** | `prettierd` | Document formatting |
| **Nix** | `nixfmt` | Nix expression formatting |

#### ⚙️ Formatting Options

- **Format on save**: Automatic formatting when saving files
- **Manual formatting**: Use `<leader>f` to format current buffer
- **Selective formatting**: Format only selected text in visual mode
- **LSP fallback**: Uses LSP formatting if no formatter available

### 🔄 Auto-completion

#### 💭 Completion Sources

- **LSP**: Language server completions
- **Buffer**: Words from current buffer
- **Path**: File system paths
- **Snippets**: Code snippets with LuaSnip
- **Copilot**: AI-powered suggestions

#### 🎯 Completion Features

- **Intelligent ranking**: Most relevant suggestions first
- **Documentation**: Inline documentation for completions
- **Snippet expansion**: Tab-expandable code snippets
- **Fuzzy matching**: Matches partial input intelligently

### 📊 Diagnostics

#### 🔍 Diagnostic Features

- **Real-time checking**: Instant feedback on code issues
- **Multiple sources**: LSP, linters, and type checkers
- **Severity levels**: Error, warning, info, hint
- **Quick navigation**: Jump between diagnostic messages
- **Quickfix integration**: Collect diagnostics in quickfix list

#### 🛠️ Diagnostic Navigation

- `[d` / `]d`: Navigate between diagnostics
- `<leader>e`: Show diagnostic details
- `<leader>q`: Open diagnostic quickfix list
- `<leader>sd`: Search diagnostics with Telescope

## 🖥️ Terminal Integration

### 🎭 Floaterm Features

The terminal integration uses **Floaterm** to provide floating terminal windows:

#### 🌟 Key Features

- **Floating windows**: Terminals appear over your editor
- **Multiple terminals**: Create and manage multiple terminal sessions
- **Easy toggling**: Show/hide terminals with simple keybindings
- **Session management**: Navigate between different terminal sessions

#### ⌨️ Terminal Workflows

| Workflow | Keys | Description |
|----------|------|-------------|
| **Quick terminal** | `<leader>tt` | Toggle floating terminal |
| **New session** | `<leader>tn` | Create new terminal session |
| **Kill session** | `<leader>tk` | Close current terminal |
| **Navigate sessions** | `<leader>tl/th` | Switch between terminals |

#### 💡 Common Use Cases

1. **Running tests**: Keep test runners in dedicated terminals
2. **Git operations**: Use git commands without leaving editor
3. **Build processes**: Monitor builds and deployments
4. **Development servers**: Run local servers for development
5. **Quick commands**: Execute system commands without switching contexts

### 🔧 Terminal Configuration

- **Automatic directory**: Terminals open in current working directory
- **Persistent sessions**: Terminals remain open across editor sessions
- **Easy access**: Accessible from any buffer or mode
- **Integration**: Works seamlessly with other plugins

## 🔄 Git Integration

### 🌿 Git Blame with Blamer

The git integration provides inline blame information:

#### 📊 Features

- **Inline blame**: See commit info next to each line
- **Commit details**: Author, date, and commit message
- **Toggle support**: Easy to enable/disable
- **Non-intrusive**: Doesn't interfere with editing

#### 🎯 Usage

- **Toggle blame**: `<leader>b` to show/hide blame info
- **Commit info**: See who changed each line and when
- **Context**: Understand code history without leaving editor

#### 💡 Benefits

1. **Code archaeology**: Understand when and why code changed
2. **Collaboration**: See teammate contributions
3. **Debugging**: Track down when bugs were introduced
4. **Documentation**: Understand code evolution

## 🤖 AI Features

### 🚀 GitHub Copilot Integration

The configuration includes full GitHub Copilot integration for AI-powered coding assistance:

#### 🎯 Features

- **Real-time suggestions**: AI completions as you type
- **Context awareness**: Understands your codebase
- **Multi-language support**: Works with all supported languages
- **Customizable**: Configurable suggestion behavior

#### ⌨️ Copilot Keybindings

| Action | Keymap | Description |
|--------|--------|-------------|
| **Accept** | `<M-l>` | Accept current suggestion |
| **Next** | `<M-]>` | Next suggestion |
| **Previous** | `<M-[>` | Previous suggestion |
| **Dismiss** | `<C-]>` | Dismiss current suggestion |
| **Panel** | `<M-CR>` | Open Copilot panel |

#### 🎪 Copilot Panel

The panel provides additional features:

- **Multiple suggestions**: See various completion options
- **Navigation**: Browse through different suggestions
- **Acceptance**: Choose the best suggestion
- **Refresh**: Get new suggestions

#### ⚙️ Configuration

- **Auto-trigger**: Suggestions appear automatically
- **Debounce**: Prevents excessive API calls
- **File types**: Disabled for certain file types (markdown, yaml, etc.)
- **Node.js requirement**: Requires Node.js 18+ for operation

#### 💡 Best Practices

1. **Use for boilerplate**: Great for repetitive code patterns
2. **Code completion**: Excellent for completing functions and classes
3. **Documentation**: Helps with writing comments and docs
4. **Learning**: Learn new patterns and best practices
5. **Productivity**: Speeds up development significantly

## 🛠️ VSCode Setup

### 📋 Prerequisites

- **VSCode**: Latest version recommended
- **Neovim**: 0.10+ installed and accessible from command line
- **Node.js**: 18+ for language servers and extensions

### 🔧 Installation Steps

#### 1. Install VSCode Neovim Extension

```bash
# Install via command line
code --install-extension asvetliakov.vscode-neovim

# Or search for "asvetliakov.vscode-neovim" in VSCode extensions
```

#### 2. Configure VSCode Settings

Add these settings to your VSCode `settings.json`:

```json
{
  // Neovim configuration
  "vscode-neovim.neovimExecutablePaths": {
    "darwin": "/opt/homebrew/bin/nvim",
    "linux": "/usr/bin/nvim",
    "win32": "C:\\tools\\neovim\\Neovim\\bin\\nvim.exe"
  },
  
  // Control key passthrough
  "vscode-neovim.ctrlKeysForNormalMode": [
    "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", 
    "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"
  ],
  
  // Editor settings optimized for Neovim
  "editor.lineNumbers": "relative",
  "editor.scrollBeyondLastLine": false,
  "editor.wordWrap": "bounded",
  "editor.wordWrapColumn": 120,
  
  // Disable VSCode vim extension if installed
  "vim.useSystemClipboard": false,
  "vim.disableExtension": true,
  
  // Formatting delegation
  "editor.formatOnSave": true,
  "editor.codeActionsOnSave": {
    "source.fixAll.eslint": true,
    "source.organizeImports": true
  }
}
```

#### 3. VSCode Keymaps

In VSCode with Neovim, these keymaps automatically delegate to VSCode's features:

| Neovim Keymap | VSCode Action | Description |
|---------------|---------------|-------------|
| `<leader>f` | `editor.action.formatDocument` | Format current document |
| `gd` | `editor.action.revealDefinition` | Go to definition |
| `gr` | `editor.action.goToReferences` | Go to references |
| `<leader>ca` | `editor.action.quickFix` | Show code actions |
| `<leader>rn` | `editor.action.rename` | Rename symbol |
| `K` | `editor.action.showHover` | Show hover information |
| `<leader>sf` | `workbench.action.quickOpen` | Quick file open |
| `<leader>sg` | `workbench.action.findInFiles` | Search in files |

### 🔍 VSCode vs Terminal Mode

#### ✅ What You Keep in VSCode

- **Telescope**: File picker and search capabilities
- **Which-key**: Keybinding help and organization
- **Text Objects**: Enhanced text manipulation (mini.ai)
- **Editing**: Comment.nvim and surround operations
- **Writing Mode**: Goyo and Pencil for distraction-free writing
- **Terminal**: Floaterm integration for terminal access
- **Git**: Blamer for inline git blame
- **AI**: GitHub Copilot integration

#### ❌ What VSCode Handles

- **LSP**: Language servers and IntelliSense
- **Completion**: Autocompletion and suggestions
- **Diagnostics**: Error checking and linting
- **Formatting**: Code formatting and style
- **File Explorer**: Built-in file explorer
- **Dashboard**: VSCode's welcome screen
- **Treesitter**: VSCode's syntax highlighting

### 🔧 VSCode-Specific Features

#### 🎯 Smart Keybinding Integration

The configuration automatically detects VSCode and adapts:

```lua
-- Example: Telescope search adapts to VSCode
if vim.g.vscode then
  -- Use VSCode's native search
  vim.keymap.set("n", "<leader>sf", function()
    vscode.action("workbench.action.quickOpen")
  end, { desc = "[S]earch [F]iles (VSCode)" })
else
  -- Use Telescope in terminal
  vim.keymap.set("n", "<leader>sf", builtin.find_files, {
    desc = "[S]earch [F]iles"
  })
end
```

#### 🎪 Preserved Plugins

These plugins work seamlessly in VSCode:

- **Which-key**: Shows keybinding help
- **Telescope**: Some features like help search
- **Comment.nvim**: Comment toggling
- **Surround**: Text object manipulation
- **Floaterm**: Terminal integration
- **Goyo/Pencil**: Writing mode

### 🔍 Troubleshooting VSCode

#### 🚨 Common Issues

1. **Neovim not found**:
   - Verify `neovimExecutablePaths` points to correct location
   - Test with `nvim --version` in terminal

2. **Extension conflicts**:
   - Disable other Vim extensions
   - Restart VSCode after changes

3. **Keybindings not working**:
   - Check `ctrlKeysForNormalMode` setting
   - Verify no conflicting VSCode shortcuts

4. **Performance issues**:
   - Ensure Node.js 18+ is installed
   - Check VSCode Neovim extension logs

#### 🔧 Debugging Steps

1. **Check Neovim path**:
   ```bash
   which nvim
   nvim --version
   ```

2. **Enable debug logging**:
   - Open VSCode settings
   - Search for "vscode-neovim"
   - Set output level to "Debug"

3. **Test with clean config**:
   - Use `vscode-neovim.neovimClean` setting
   - Verify basic functionality

4. **Check extension logs**:
   - Open VSCode output panel
   - Select "VSCode Neovim" from dropdown
   - Look for error messages

## 🎨 Customization Guide

### 🔧 Adding New Plugins

#### 1. Choose Plugin Category

Determine which category your plugin belongs to:

- **Essential**: Core functionality
- **UI**: User interface enhancements
- **Writing**: Writing and documentation
- **Terminal**: Terminal integration
- **Editing**: Text editing enhancements
- **LSP**: Language server related
- **Formatting**: Code formatting
- **Completion**: Autocompletion
- **Themes**: Appearance and colors
- **AI**: AI and productivity tools

#### 2. Add Plugin Configuration

Create or modify the appropriate file in `lua/plugins/`:

```lua
-- Example: Adding a new plugin to themes.lua
return {
  -- Existing plugins...
  
  -- New plugin
  {
    "plugin-author/plugin-name",
    config = function()
      require("plugin-name").setup({
        -- Plugin configuration
      })
    end,
    keys = {
      { "<leader>x", "<cmd>PluginCommand<cr>", desc = "Plugin description" }
    }
  }
}
```

#### 3. Environment-Specific Loading

For plugins that should only load in specific environments:

```lua
-- Terminal only
if vim.g.vscode then
  return {}
end

-- VSCode only
if not vim.g.vscode then
  return {}
end
```

### 🎯 Custom Keybindings

#### 1. Add to Keymaps

Edit `lua/config/keymaps.lua`:

```lua
-- Add your custom keybindings
vim.keymap.set("n", "<leader>x", "<cmd>YourCommand<cr>", {
  desc = "Your custom command"
})
```

#### 2. Plugin-Specific Keybindings

Add keybindings in plugin configuration:

```lua
{
  "plugin-name",
  keys = {
    { "<leader>x", "<cmd>PluginCommand<cr>", desc = "Plugin command" }
  }
}
```

### 🎨 Theme Customization

#### 1. Change Colorscheme

Edit `lua/plugins/themes.lua`:

```lua
{
  "new-theme/colorscheme",
  priority = 1000,
  init = function()
    vim.cmd.colorscheme("new-theme")
  end
}
```

#### 2. Custom Highlights

Add custom highlights:

```lua
vim.api.nvim_set_hl(0, "MyCustomHighlight", {
  fg = "#ffffff",
  bg = "#000000",
  bold = true
})
```

### ⚙️ LSP Configuration

#### 1. Add New Language Server

Edit `lua/plugins/lsp.lua`:

```lua
local servers = {
  -- Existing servers...
  
  -- New server
  new_server = {
    settings = {
      -- Server-specific settings
    }
  }
}
```

#### 2. Custom LSP Settings

Modify server configurations:

```lua
lspconfig.typescript.setup({
  -- Custom TypeScript settings
  settings = {
    typescript = {
      preferences = {
        noSemicolons = true
      }
    }
  }
})
```

### 🎯 Formatter Configuration

#### 1. Add New Formatter

Edit `lua/plugins/formatting.lua`:

```lua
formatters_by_ft = {
  -- Existing formatters...
  
  -- New language formatter
  newlang = { "new-formatter" }
}
```

#### 2. Custom Formatter Settings

```lua
require("conform").setup({
  formatters = {
    custom_formatter = {
      command = "formatter-binary",
      args = { "--custom-arg" }
    }
  }
})
```

## 💼 Work Configuration

### 🏢 Overview

The configuration supports work-specific customizations through an optional `workconfig.lua` file:

```lua
-- ~/.config/nvim/workconfig.lua
local M = {}

M.settings = function()
  -- Work-specific settings
  vim.opt.tabstop = 4
  vim.opt.shiftwidth = 4
  
  -- Custom variables
  vim.g.work_mode = true
end

M.keymaps = function()
  -- Work-specific keymaps
  vim.keymap.set("n", "<leader>wd", "<cmd>WorkCommand<cr>", {
    desc = "Work-specific command"
  })
end

M.plugins = {
  -- Work-specific plugins
  {
    "work-org/work-plugin",
    config = function()
      require("work-plugin").setup({
        -- Work configuration
      })
    end
  }
}

return M
```

### 📦 Work Plugin Integration

#### 1. Conditional Loading

Load work plugins conditionally:

```lua
-- In any plugin file
if WorkConfig and WorkConfig.plugins then
  for _, plugin in ipairs(WorkConfig.plugins) do
    table.insert(plugins, plugin)
  end
end
```

#### 2. Work-Specific Settings

Apply work settings:

```lua
-- Settings applied automatically if workconfig.lua exists
if WorkConfig and WorkConfig.settings then
  WorkConfig.settings()
end
```

### 🔧 Example Work Configuration

```lua
-- ~/.config/nvim/workconfig.lua
local M = {}

M.settings = function()
  -- Company coding standards
  vim.opt.tabstop = 4
  vim.opt.shiftwidth = 4
  vim.opt.expandtab = true
  
  -- Work-specific options
  vim.g.company_name = "Acme Corp"
  vim.g.work_email = "user@company.com"
end

M.keymaps = function()
  -- Work-specific shortcuts
  vim.keymap.set("n", "<leader>wj", "<cmd>JiraTicket<cr>", {
    desc = "Open Jira ticket"
  })
  
  vim.keymap.set("n", "<leader>wp", "<cmd>WorkProject<cr>", {
    desc = "Switch work project"
  })
end

M.plugins = {
  {
    "company/internal-tools",
    config = function()
      require("internal-tools").setup({
        api_key = os.getenv("COMPANY_API_KEY")
      })
    end
  }
}

return M
```

## 🔍 Troubleshooting

### 🚨 Common Issues

#### 1. Plugins Not Loading

**Symptoms**: Plugins missing or not working

**Solutions**:
```bash
# Check Lazy.nvim status
:Lazy

# Update plugins
:Lazy update

# Check health
:checkhealth
```

#### 2. LSP Not Working

**Symptoms**: No completion, diagnostics, or hover

**Solutions**:
```bash
# Check LSP status
:LspInfo

# Check Mason installation
:Mason

# Restart LSP
:LspRestart
```

#### 3. Formatting Issues

**Symptoms**: Format command not working

**Solutions**:
```bash
# Check conform status
:ConformInfo

# Install formatters via Mason
:Mason

# Check file type detection
:set filetype?
```

#### 4. Keybindings Not Working

**Symptoms**: Keys not responding

**Solutions**:
```bash
# Check keymaps
:map <leader>

# Search specific keymap
:map <leader>f

# Check which-key
:WhichKey
```

### 🔧 Debug Commands

| Command | Purpose |
|---------|---------|
| `:checkhealth` | System health check |
| `:Lazy` | Plugin manager status |
| `:LspInfo` | LSP server information |
| `:Mason` | LSP/tool installer |
| `:ConformInfo` | Formatter status |
| `:Telescope` | Available telescope pickers |
| `:WhichKey` | Show keybinding help |

### 📊 Performance Issues

#### 1. Slow Startup

**Causes**: Too many plugins loading at startup

**Solutions**:
- Use lazy loading with `lazy = true`
- Load plugins on events: `event = "BufRead"`
- Load plugins on commands: `cmd = "CommandName"`
- Load plugins on keys: `keys = "<leader>x"`

#### 2. High Memory Usage

**Causes**: LSP servers, large files, or plugin conflicts

**Solutions**:
- Restart LSP servers: `:LspRestart`
- Close unused buffers: `:bd`
- Check plugin usage: `:Lazy profile`

#### 3. Slow File Operations

**Causes**: Large files or complex syntax highlighting

**Solutions**:
- Disable treesitter for large files
- Use minimal colorscheme
- Reduce number of active LSP servers

## ⚡ Performance Tips

### 🚀 Startup Optimization

1. **Lazy loading**: Most plugins use lazy loading
2. **Conditional loading**: Terminal vs VSCode plugins
3. **Minimal init**: Core functionality loads first
4. **Cached configuration**: Lua modules are cached

### 📈 Runtime Performance

1. **LSP optimization**: Only essential servers active
2. **Plugin efficiency**: Well-maintained, fast plugins
3. **Treesitter**: Efficient syntax highlighting
4. **Minimal autocommands**: Only necessary autocmds

### 🎯 Memory Management

1. **Buffer management**: Close unused buffers
2. **Plugin cleanup**: Lazy.nvim handles plugin lifecycle
3. **LSP cleanup**: Servers restart automatically
4. **Garbage collection**: Lua handles memory automatically

## 🔧 Advanced Usage

### 🎯 Power User Features

#### 1. Telescope Advanced

```lua
-- Custom telescope picker
:Telescope grep_string search=TODO

-- Live grep with args
:Telescope live_grep_args

-- Search in specific directory
:Telescope find_files cwd=~/projects
```

#### 2. LSP Advanced

```lua
-- Show LSP logs
:LspLog

-- Restart specific server
:LspRestart typescript

-- Format with specific formatter
:Format stylua
```

#### 3. Custom Commands

Create custom commands for workflows:

```lua
-- In your configuration
vim.api.nvim_create_user_command("ProjectSetup", function()
  -- Custom project setup logic
end, {})
```

### 🔄 Workflow Integration

#### 1. Development Workflow

1. **File navigation**: Use `<leader>sf` for quick file access
2. **Code exploration**: Use `gd`, `gr` for code navigation
3. **Terminal integration**: Use `<leader>tt` for terminal access
4. **Git blame**: Use `<leader>b` for code history

#### 2. Writing Workflow

1. **Zen mode**: Use `<leader>z` for distraction-free writing
2. **Spell check**: Enable with `:set spell`
3. **Word count**: Use `:!wc %` for word counting
4. **Preview**: Use markdown preview plugins

#### 3. Testing Workflow

1. **Terminal testing**: Use `<leader>tn` for test terminal
2. **File watching**: Use `:!npm test -- --watch`
3. **Quick feedback**: Use floating terminal for immediate results

### 🎨 Advanced Customization

#### 1. Custom Highlight Groups

```lua
vim.api.nvim_set_hl(0, "MyCustomHL", {
  fg = "#ff0000",
  bg = "#000000",
  bold = true,
  italic = true
})
```

#### 2. Custom Autocommands

```lua
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.spell = true
  end
})
```

#### 3. Custom Functions

```lua
local function toggle_quickfix()
  local qf_exists = false
  for _, win in pairs(vim.fn.getwininfo()) do
    if win["quickfix"] == 1 then
      qf_exists = true
      break
    end
  end
  
  if qf_exists then
    vim.cmd("cclose")
  else
    vim.cmd("copen")
  end
end

vim.keymap.set("n", "<leader>tq", toggle_quickfix, {
  desc = "Toggle quickfix"
})
```

## 👤 Author

Configuration by **jcpsimmons**

---

*This configuration is designed to be a comprehensive, yet approachable Neovim setup that grows with your needs. Whether you're a beginner or an advanced user, the modular design allows you to understand and customize every aspect of your editor.*

**Happy coding! 🚀**
