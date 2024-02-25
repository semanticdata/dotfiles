# ⚙ dotfiles

<p align="">
  <img src="https://img.shields.io/github/languages/code-size/semanticdata/dotfiles" />
  <img src="https://img.shields.io/github/repo-size/semanticdata/dotfiles" />
  <img src="https://img.shields.io/github/commit-activity/t/semanticdata/dotfiles" />
  <img src="https://img.shields.io/github/last-commit/semanticdata/dotfiles" />
</p>

Opinionated compilation of configuration files and other loosely related items.

## Table of Contents

<details>
<summary>Show/Hide</summary>
	
- [⚙ dotfiles](#-dotfiles)
  - [Table of Contents](#table-of-contents)
  - [Code Partials](#code-partials)
    - [HTML](#html)
    - [CSS](#css)
  - [GitHub](#github)
    - [GitHub Badges](#github-badges)
      - [Website Repositories](#website-repositories)
      - [Firefox Extension Repository](#firefox-extension-repository)
      - [Brands](#brands)
  - [Firefox](#firefox)
    - [Add Style to Firefox](#add-style-to-firefox)
    - [Add Style to Sidebery](#add-style-to-sidebery)
    - [Other Notes](#other-notes)
    - [Recommended Config Settings](#recommended-config-settings)
  - [Obsidian.md](#obsidianmd)
    - [Obsidian Publisher → GitHub](#obsidian-publisher--github)
  - [NeoVim](#neovim)
    - [Screenshots](#screenshots)
    - [Keybindings](#keybindings)
    - [Plugins](#plugins)
  - [Color Palettes](#color-palettes)
  - [ESLint and Prettier](#eslint-and-prettier)
  - [Reporting Issues](#reporting-issues)
  - [Contributing](#contributing)
  - [Acknowledgements and Attributions](#acknowledgements-and-attributions)
  - [License](#license)

</details>

## Code Partials

Within the [partials/](partials/) folder you can find standalone CSS snippets, and independent HTML with CSS files.

### HTML

- Accordion
- Avatar
- Callout Timeline
- Card Tabs
- Card
- Color Swatch
- Cover Generator
- Fancy Blockquotes
- Head
- Timeline
- Typewriter Effect

### CSS

- Bearblog
- Box Shadow
- Code
- Full Bleed
- Normalize
- Table
- Utilities
  - Container (wrapper)
  - SVG Icons
- Variables (scss)

## GitHub

- [.gitattributes](.gitattributes)
- [.gitignore](.gitignore)
- [.gitconfig](.gitconfig)

**Add original repo as Upstream Remote:**

```bash
git remote add upstream <original-repo>.git
```

**Update your fork:**

```bash
git pull upstream main 
```

### GitHub Badges

#### Website Repositories

<p align="">
  <img src="https://img.shields.io/github/languages/code-size/semanticdata/dotfiles" />
  <img src="https://img.shields.io/github/repo-size/semanticdata/dotfiles" />
  <img src="https://img.shields.io/github/commit-activity/t/semanticdata/dotfiles" />
  <img src="https://img.shields.io/github/last-commit/semanticdata/dotfiles" />
  <img src="https://img.shields.io/website/https/miguelpimentel.do.svg" />
</p>

#### Firefox Extension Repository

<p align="">
  <img alt="Mozilla Add-on"
    src="https://img.shields.io/amo/v/{a16c3799-d903-44e3-b044-a032197f5ef8}?style=for-the-badge">
  <img src="https://img.shields.io/amo/rating/{a16c3799-d903-44e3-b044-a032197f5ef8}?style=for-the-badge" />
  <img src="https://img.shields.io/amo/dw/{a16c3799-d903-44e3-b044-a032197f5ef8}?style=for-the-badge" />
  <img src="https://img.shields.io/amo/users/{a16c3799-d903-44e3-b044-a032197f5ef8}?style=for-the-badge" />
  <img src="https://img.shields.io/github/license/datastring/firefox-telegram-in-sidebar?style=for-the-badge" />
</p>

#### Brands

![Dev.to blog](https://img.shields.io/badge/dev.to-0A0A0A?style=for-the-badge&logo=dev.to&logoColor=white)
![Rss](https://img.shields.io/badge/rss-F88900?style=for-the-badge&logo=rss&logoColor=white)
![Firefox](https://img.shields.io/badge/Firefox-FF7139?style=for-the-badge&logo=Firefox-Browser&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)
![CodePen](https://img.shields.io/badge/Codepen-000000?style=for-the-badge&logo=codepen&logoColor=white)

![CodePen](https://img.shields.io/badge/CodePen-white?style=for-the-badge&logo=codepen&logoColor=black)
![Github-sponsors](https://img.shields.io/badge/sponsor-30363D?style=for-the-badge&logo=GitHub-Sponsors&logoColor=#EA4AAA)
![Bulma](https://img.shields.io/badge/bulma-00D0B1?style=for-the-badge&logo=bulma&logoColor=white)
![Hugo](https://img.shields.io/badge/Hugo-black.svg?style=for-the-badge&logo=Hugo)
![NPM](https://img.shields.io/badge/NPM-%23CB3837.svg?style=for-the-badge&logo=npm&logoColor=white)

![SASS](https://img.shields.io/badge/SASS-hotpink.svg?style=for-the-badge&logo=SASS&logoColor=white)
![Svelte](https://img.shields.io/badge/svelte-%23f1413d.svg?style=for-the-badge&logo=svelte&logoColor=white)
![TailwindCSS](https://img.shields.io/badge/tailwindcss-%2338B2AC.svg?style=for-the-badge&logo=tailwind-css&logoColor=white)
![Vite](https://img.shields.io/badge/vite-%23646CFF.svg?style=for-the-badge&logo=vite&logoColor=white)
![Yarn](https://img.shields.io/badge/yarn-%232C8EBB.svg?style=for-the-badge&logo=yarn&logoColor=white)

![Godot Engine](https://img.shields.io/badge/GODOT-%23FFFFFF.svg?style=for-the-badge&logo=godot-engine)
![Github Pages](https://img.shields.io/badge/github%20pages-121013?style=for-the-badge&logo=github&logoColor=white)
![Netlify](https://img.shields.io/badge/netlify-%23000000.svg?style=for-the-badge&logo=netlify&logoColor=#00C7B7)
![Vercel](https://img.shields.io/badge/vercel-%23000000.svg?style=for-the-badge&logo=vercel&logoColor=white)
![Neovim](https://img.shields.io/badge/NeoVim-%2357A143.svg?&style=for-the-badge&logo=neovim&logoColor=white)

![Obsidian](https://img.shields.io/badge/Obsidian-%23483699.svg?style=for-the-badge&logo=obsidian&logoColor=white)
![Visual Studio Code](https://img.shields.io/badge/Visual%20Studio%20Code-0078d7.svg?style=for-the-badge&logo=visual-studio-code&logoColor=white)
![HTML5](https://img.shields.io/badge/html5-%23E34F26.svg?style=for-the-badge&logo=html5&logoColor=white)
![JavaScript](https://img.shields.io/badge/javascript-%23323330.svg?style=for-the-badge&logo=javascript&logoColor=%23F7DF1E)
![Lua](https://img.shields.io/badge/lua-%232C2D72.svg?style=for-the-badge&logo=lua&logoColor=white)

![Markdown](https://img.shields.io/badge/markdown-%23000000.svg?style=for-the-badge&logo=markdown&logoColor=white)
![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54)
![TypeScript](https://img.shields.io/badge/typescript-%23007ACC.svg?style=for-the-badge&logo=typescript&logoColor=white)
![Spotify](https://img.shields.io/badge/Spotify-1ED760?style=for-the-badge&logo=spotify&logoColor=white)
![Fedora](https://img.shields.io/badge/Fedora-294172?style=for-the-badge&logo=fedora&logoColor=white)

![Bitwarden](https://img.shields.io/badge/bitwarden-%23175DDC.svg?style=for-the-badge&logo=bitwarden&logoColor=white)
![Discord](https://img.shields.io/badge/Discord-%235865F2.svg?style=for-the-badge&logo=discord&logoColor=white)
![Instagram](https://img.shields.io/badge/Instagram-%23E4405F.svg?style=for-the-badge&logo=Instagram&logoColor=white)
![Git](https://img.shields.io/badge/git-%23F05033.svg?style=for-the-badge&logo=git&logoColor=white)
![GitHub](https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white)

![GitHub Sponsor](https://img.shields.io/badge/sponsor-30363D?style=for-the-badge&logo=GitHub-Sponsors&logoColor=#white)

## Firefox

### Add Style to Firefox

1. In about:config enable pref toolkit.legacyUserProfileCustomizations.stylesheets
2. Open about:support
3. Click on "Profile Folder" -> "Open Folder"
4. Create a sub-folder named "chrome"
5. Change into the new folder
6. Add files "userChrome.css" "userContent.css"
7. Restart Firefox
8. In Customize... :

- Select Default theme. The color scheme depends on the OS
- Select Compact icons
- Drag Bookmarks Toolbar Items to the left of the address bar. Disable Bookmarks Toolbar

### Add Style to Sidebery

1. Install <https://addons.mozilla.org/firefox/addon/sidebery/>
2. Copy the code from SideberySidebar.css to Sidebery / Settings / Styles editor / Sidebar
3. Copy the code from SideberyGroupPage.css to Sidebery / Settings / Styles editor / Group page
4. Enable the option: Sidebery / Settings / Help / Add preface to the browser window's title if sidebery is active

### Other Notes

- If you need window control buttons - unlock code `Show window buttons - + x`
- If you need an interface in window mode - block the code `Hide interface in window mode`

### Recommended Config Settings

- Opening a bookmark in a new tab
`browser.tabs.loadBookmarksInTabs` `true`
- Open tabs to the right of the current one
`browser.tabs.insertAfterCurrent` `true`
- Scroll step
`mousewheel.min_line_scroll_amount` `25`
- Smoothness of scrolling
`general.smoothScroll.mouseWheel.durationMaxMS` `380`
- Number of recently closed tabs
`browser.sessionstore.max_tabs_undo` `250`
- Disable warning when going to full screen mode
`full-screen-api.warning.timeout` `0`
- Disable add-on recommendations
`extensions.htmlaboutaddons.recommendations.enabled` `false`

## Obsidian.md

Check out my [Obsidian Starter Vault](https://github.com/semanticdata/obsidian-starter-vault) to get you started with the app.

### Obsidian Publisher → GitHub

[Obsidian Publisher](https://github.com/ObsidianPublisher/obsidian-github-publisher) helps you to publish your notes on a preconfigured GitHub repository from your Obsidian vault. Check out my [configuration](config/obsidian/obsidian-publisher.json).

## NeoVim

**Configuration** → [init.lua](config/nvim/init.lua)

**Sync from CLI** → `nvim --headless "+Lazy! sync" +qa`

### Screenshots

<details>
<summary>Show/Hide</summary>
<br />
	
![Welcome Screen](/assets/screenshot-1-no-file.png)
*Welcome Screen*

![Example File](/assets/screenshot-2-nvim-config.png)
*Example File*

</details>

### Keybindings

<details>
<summary>Show/Hide</summary>
<br />
	
|      Key Combination       |                    Command                     |
| :------------------------: | :--------------------------------------------: |
|         `<leader>`         |                   `<space>`                    |
|        **Unsorted**        |                                                |
|        `<leader>h`         |                      `^`                       |
|        `<leader>l`         |                      `g_`                      |
|        `<leader>a`         |         `:keepjumps normal! ggVG<cr>`          |
|            `gy`            |                     `"+y`                      |
|            `gp`            |                     `"+p`                      |
|            `x`             |                     `"_x`                      |
|        `<leader>e`         |           `<cmd>NvimTreeToggle<cr>`            |
|        **Commands**        |                                                |
|        `<leader>w`         |                `<cmd>write<cr>`                |
|        `<leader>bq`        |               `<cmd>bdelete<cr>`               |
|        `<leader>bl`        |              `<cmd>buffer #<cr>`               |
|           `<F2>`           |              `<cmd>Lexplore<cr>`               |
|      `<space><space>`      |                     `<F2>`                     |
|       **Telescope**        |                                                |
|     `<leader><space>`      |          `<cmd>Telescope buffers<cr>`          |
|        `<leader>?`         |         `<cmd>Telescope oldfiles<cr>`          |
|        `<leader>ff`        |        `<cmd>Telescope find_files<cr>`         |
|        `<leader>fg`        |         `<cmd>Telescope live_grep<cr>`         |
|        `<leader>fd`        |        `<cmd>Telescope diagnostics<cr>`        |
|        `<leader>fs`        | `<cmd>Telescope current_buffer_fuzzy_find<cr>` |
|  **Telescope (builtin)**   |                                                |
|        `<leader>ff`        |            `builtin.find_files, {}`            |
|        `<leader>fg`        |            `builtin.live_grep, {}`             |
|        `<leader>fb`        |             `builtin.buffers, {}`              |
|        `<leader>fh`        |            `builtin.help_tags, {}`             |
|      **Normal Mode**       |                                                |
|          `<C-q>`           |                   `:q!<CR>`                    |
|           `<F4>`           |                   `:bd<CR>`                    |
|   **Moving Vertically**    |                                                |
|          `<C-d>`           |                   `<C-d>zz`                    |
|          `<C-u>`           |                   `<C-u>zz`                    |
|            `n`             |                    `nzzzv`                     |
|            `N`             |                    `Nzzzv`                     |
|     **Tab Navigation**     |                                                |
|         `<S-Tab>`          |                      `gT`                      |
|          `<Tab>`           |                      `gt`                      |
|      `<silent <S-t>`       |                 `:tabnew<CR>`                  |
| **Pane/Window Navigation** |                                                |
|          `<C-h>`           |                    `<C-w>h`                    |
|          `<C-j>`           |                    `<C-w>j`                    |
|          `<C-k>`           |                    `<C-w>k`                    |
|          `<C-l>`           |                    `<C-w>l`                    |
|         `<C-left>`         |                    `<C-w>h`                    |
|         `<C-down>`         |                    `<C-w>j`                    |
|          `<C-up>`          |                    `<C-w>k`                    |
|        `<C-right>`         |                    `<C-w>l`                    |
|        **Terminal**        |                                                |
|          `<A-t>`           |             `:sp term://pwsh<cr>i`             |
|            `tv`            |     `:lcd %:p:h<CR>:vsp term://pwsh<CR>i`      |
|            `th`            |      `:lcd %:p:h<CR>:sp term://pwsh<CR>i`      |
|          `<Esc>`           |                 `<C-\\><C-n>`                  |
|           `:q!`            |              `<C-\\><C-n>:q!<CR>`              |

</details>

### Plugins

<details>
<summary>Show/Hide</summary>
<br />
	
|                                                 Author/Plugin                                                 | Description                                                          |
| :-----------------------------------------------------------------------------------------------------------: | -------------------------------------------------------------------- |
|                     [akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim)                     | A snazzy bufferline for Neovim.                                      |
|                     [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)                     | A neovim lua plugin to help easily manage multiple terminal windows. |
|                            [ap/vim-css-color](https://github.com/ap/vim-css-color)                            | Preview colours in source code while editing.                        |
|               [editorconfig/editorconfig-vim](https://github.com/editorconfig/editorconfig-vim)               | EditorConfig plugin for Vim.                                         |
|                       [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)                       | Theme                                                                |
|                    [kyazdani42/nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)                    | A file explorer tree for neovim written in lua.                      |
|                [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)                | Lua "fork" of vim-web-devicons for neovim.                           |
|                     [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)                     | Git integration for buffers.                                         |
|         [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)         | Indent guides for Neovim.                                            |
|                       [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)                       | Smart and powerful comment plugin for neovim.                        |
|                       [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)                       | All the lua functions I [they] don't want to write twice.            |
|                   [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)                   | neovim statusline plugin written in pure lua.                        |
|               [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)               | Find, Filter, Preview, Pick. All lua, all the time.                  |
| [nvim-treesitter/nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects) | Syntax aware text-objects, select, move, swap, and peek support.     |
|             [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)             | Nvim Treesitter configurations and abstraction layer.                |
|                    [ThePrimeagen/vim-be-good](https://github.com/ThePrimeagen/vim-be-good)                    | Nvim plugin designed to make you better at Vim Movements.            |
|                          [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)                          | A Git wrapper so awesome, it should be illegal.                      |
|    [vim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim)     | Find, Filter, Preview, Pick. All lua, all the time.                  |
|                          [wellle/targets.vim](https://github.com/wellle/targets.vim)                          | Vim plugin that provides additional text objects.                    |

</details>

## Color Palettes

<details>
	<summary>Show/Hide</summary>
<br />
<table><tr><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/0.png" width="50" height="50" alt="infoBlueColor" /></td><td><b>infoBlueColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/1.png" width="50" height="50" alt="successColor" /></td><td><b>successColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/2.png" width="50" height="50" alt="warningColor" /></td><td><b>warningColor</b></td></tr><tr><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/3.png" width="50" height="50" alt="dangerColor" /></td><td><b>dangerColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/4.png" width="50" height="50" alt="antiqueWhiteColor" /></td><td><b>antiqueWhiteColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/5.png" width="50" height="50" alt="oldLaceColor" /></td><td><b>oldLaceColor</b></td></tr><tr><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/6.png" width="50" height="50" alt="ivoryColor" /></td><td><b>ivoryColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/7.png" width="50" height="50" alt="seashellColor" /></td><td><b>seashellColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/8.png" width="50" height="50" alt="ghostWhiteColor" /></td><td><b>ghostWhiteColor</b></td></tr><tr><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/9.png" width="50" height="50" alt="snowColor" /></td><td><b>snowColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/10.png" width="50" height="50" alt="linenColor" /></td><td><b>linenColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/11.png" width="50" height="50" alt="black25PercentColor" /></td><td><b>black25PercentColor</b></td></tr><tr><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/12.png" width="50" height="50" alt="black50PercentColor" /></td><td><b>black50PercentColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/13.png" width="50" height="50" alt="black75PercentColor" /></td><td><b>black75PercentColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/14.png" width="50" height="50" alt="warmGrayColor" /></td><td><b>warmGrayColor</b></td></tr><tr><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/15.png" width="50" height="50" alt="coolGrayColor" /></td><td><b>coolGrayColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/16.png" width="50" height="50" alt="charcoalColor" /></td><td><b>charcoalColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/17.png" width="50" height="50" alt="tealColor" /></td><td><b>tealColor</b></td></tr><tr><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/18.png" width="50" height="50" alt="steelBlueColor" /></td><td><b>steelBlueColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/19.png" width="50" height="50" alt="robinEggColor" /></td><td><b>robinEggColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/20.png" width="50" height="50" alt="pastelBlueColor" /></td><td><b>pastelBlueColor</b></td></tr><tr><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/21.png" width="50" height="50" alt="turquoiseColor" /></td><td><b>turquoiseColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/22.png" width="50" height="50" alt="skyBlueColor" /></td><td><b>skyBlueColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/23.png" width="50" height="50" alt="indigoColor" /></td><td><b>indigoColor</b></td></tr><tr><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/24.png" width="50" height="50" alt="denimColor" /></td><td><b>denimColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/25.png" width="50" height="50" alt="blueberryColor" /></td><td><b>blueberryColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/26.png" width="50" height="50" alt="cornflowerColor" /></td><td><b>cornflowerColor</b></td></tr><tr><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/27.png" width="50" height="50" alt="babyBlueColor" /></td><td><b>babyBlueColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/28.png" width="50" height="50" alt="midnightBlueColor" /></td><td><b>midnightBlueColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/29.png" width="50" height="50" alt="fadedBlueColor" /></td><td><b>fadedBlueColor</b></td></tr><tr><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/30.png" width="50" height="50" alt="icebergColor" /></td><td><b>icebergColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/31.png" width="50" height="50" alt="waveColor" /></td><td><b>waveColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/32.png" width="50" height="50" alt="emeraldColor" /></td><td><b>emeraldColor</b></td></tr><tr><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/33.png" width="50" height="50" alt="grassColor" /></td><td><b>grassColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/34.png" width="50" height="50" alt="pastelGreenColor" /></td><td><b>pastelGreenColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/35.png" width="50" height="50" alt="seafoamColor" /></td><td><b>seafoamColor</b></td></tr><tr><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/36.png" width="50" height="50" alt="paleGreenColor" /></td><td><b>paleGreenColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/37.png" width="50" height="50" alt="cactusGreenColor" /></td><td><b>cactusGreenColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/38.png" width="50" height="50" alt="chartreuseColor" /></td><td><b>chartreuseColor</b></td></tr><tr><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/39.png" width="50" height="50" alt="hollyGreenColor" /></td><td><b>hollyGreenColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/40.png" width="50" height="50" alt="oliveColor" /></td><td><b>oliveColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/41.png" width="50" height="50" alt="oliveDrabColor" /></td><td><b>oliveDrabColor</b></td></tr><tr><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/42.png" width="50" height="50" alt="moneyGreenColor" /></td><td><b>moneyGreenColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/43.png" width="50" height="50" alt="honeydewColor" /></td><td><b>honeydewColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/44.png" width="50" height="50" alt="limeColor" /></td><td><b>limeColor</b></td></tr><tr><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/45.png" width="50" height="50" alt="cardTableColor" /></td><td><b>cardTableColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/46.png" width="50" height="50" alt="salmonColor" /></td><td><b>salmonColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/47.png" width="50" height="50" alt="brickRedColor" /></td><td><b>brickRedColor</b></td></tr><tr><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/48.png" width="50" height="50" alt="easterPinkColor" /></td><td><b>easterPinkColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/49.png" width="50" height="50" alt="grapefruitColor" /></td><td><b>grapefruitColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/50.png" width="50" height="50" alt="pinkColor" /></td><td><b>pinkColor</b></td></tr><tr><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/51.png" width="50" height="50" alt="indianRedColor" /></td><td><b>indianRedColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/52.png" width="50" height="50" alt="strawberryColor" /></td><td><b>strawberryColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/53.png" width="50" height="50" alt="coralColor" /></td><td><b>coralColor</b></td></tr><tr><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/54.png" width="50" height="50" alt="maroonColor" /></td><td><b>maroonColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/55.png" width="50" height="50" alt="watermelonColor" /></td><td><b>watermelonColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/56.png" width="50" height="50" alt="tomatoColor" /></td><td><b>tomatoColor</b></td></tr><tr><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/57.png" width="50" height="50" alt="pinkLipstickColor" /></td><td><b>pinkLipstickColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/58.png" width="50" height="50" alt="paleRoseColor" /></td><td><b>paleRoseColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/59.png" width="50" height="50" alt="crimsonColor" /></td><td><b>crimsonColor</b></td></tr><tr><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/60.png" width="50" height="50" alt="eggplantColor" /></td><td><b>eggplantColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/61.png" width="50" height="50" alt="pastelPurpleColor" /></td><td><b>pastelPurpleColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/62.png" width="50" height="50" alt="palePurpleColor" /></td><td><b>palePurpleColor</b></td></tr><tr><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/63.png" width="50" height="50" alt="coolPurpleColor" /></td><td><b>coolPurpleColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/64.png" width="50" height="50" alt="violetColor" /></td><td><b>violetColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/65.png" width="50" height="50" alt="plumColor" /></td><td><b>plumColor</b></td></tr><tr><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/66.png" width="50" height="50" alt="lavenderColor" /></td><td><b>lavenderColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/67.png" width="50" height="50" alt="raspberryColor" /></td><td><b>raspberryColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/68.png" width="50" height="50" alt="fuschiaColor" /></td><td><b>fuschiaColor</b></td></tr><tr><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/69.png" width="50" height="50" alt="grapeColor" /></td><td><b>grapeColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/70.png" width="50" height="50" alt="periwinkleColor" /></td><td><b>periwinkleColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/71.png" width="50" height="50" alt="orchidColor" /></td><td><b>orchidColor</b></td></tr><tr><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/72.png" width="50" height="50" alt="goldenrodColor" /></td><td><b>goldenrodColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/73.png" width="50" height="50" alt="yellowGreenColor" /></td><td><b>yellowGreenColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/74.png" width="50" height="50" alt="bananaColor" /></td><td><b>bananaColor</b></td></tr><tr><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/75.png" width="50" height="50" alt="mustardColor" /></td><td><b>mustardColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/76.png" width="50" height="50" alt="buttermilkColor" /></td><td><b>buttermilkColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/77.png" width="50" height="50" alt="goldColor" /></td><td><b>goldColor</b></td></tr><tr><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/78.png" width="50" height="50" alt="creamColor" /></td><td><b>creamColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/79.png" width="50" height="50" alt="lightCreamColor" /></td><td><b>lightCreamColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/80.png" width="50" height="50" alt="wheatColor" /></td><td><b>wheatColor</b></td></tr><tr><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/81.png" width="50" height="50" alt="beigeColor" /></td><td><b>beigeColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/82.png" width="50" height="50" alt="peachColor" /></td><td><b>peachColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/83.png" width="50" height="50" alt="burntOrangeColor" /></td><td><b>burntOrangeColor</b></td></tr><tr><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/84.png" width="50" height="50" alt="pastelOrangeColor" /></td><td><b>pastelOrangeColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/85.png" width="50" height="50" alt="cantaloupeColor" /></td><td><b>cantaloupeColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/86.png" width="50" height="50" alt="carrotColor" /></td><td><b>carrotColor</b></td></tr><tr><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/87.png" width="50" height="50" alt="mandarinColor" /></td><td><b>mandarinColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/88.png" width="50" height="50" alt="chiliPowderColor" /></td><td><b>chiliPowderColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/89.png" width="50" height="50" alt="burntSiennaColor" /></td><td><b>burntSiennaColor</b></td></tr><tr><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/90.png" width="50" height="50" alt="chocolateColor" /></td><td><b>chocolateColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/91.png" width="50" height="50" alt="coffeeColor" /></td><td><b>coffeeColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/92.png" width="50" height="50" alt="cinnamonColor" /></td><td><b>cinnamonColor</b></td></tr><tr><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/93.png" width="50" height="50" alt="almondColor" /></td><td><b>almondColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/94.png" width="50" height="50" alt="eggshellColor" /></td><td><b>eggshellColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/95.png" width="50" height="50" alt="sandColor" /></td><td><b>sandColor</b></td></tr><tr><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/96.png" width="50" height="50" alt="mudColor" /></td><td><b>mudColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/97.png" width="50" height="50" alt="siennaColor" /></td><td><b>siennaColor</b></td><td><img src="https://raw.github.com/bennyguitar/Colours-for-iOS/master/Screenshots/Colors/98.png" width="50" height="50" alt="dustColor" /></td><td><b>dustColor</b></td></tr></table>

</details>

## ESLint and Prettier

- [Awesome ESLint](https://github.com/dustinspecker/awesome-eslint)
- [Markdown](https://github.com/eslint/eslint-plugin-markdown)
- [HTML](https://github.com/yeonjuan/html-eslint)
- [JSON](https://github.com/kuceb/eslint-plugin-json-format)
  - [Schema Validator](https://github.com/ota-meshi/eslint-plugin-json-schema-validator)

## Reporting Issues

We use GitHub Issues as the official bug tracker for this repository. Please
search [existing issues](https://github.com/semanticdata/dotfiles/issues). It’s possible someone has already reported the same problem.

If your problem or idea is not addressed yet, [open a new issue](https://github.com/semanticdata/dotfiles/issues/new).

## Contributing

We'd love your help! Please see [CONTRIBUTING](.github/CONTRIBUTING.md) to learn about the kinds of contributions we're looking for.

Please read and be aware of the [Code of Conduct](.github/CODE_OF_CONDUCT.md) before conttributing.

## Acknowledgements and Attributions

The icons used thorought my projects come from [UXWing](https://uxwing.com/license/), [Remix Icon](https://remixicon.com/license/), and/or [Lucide](https://lucide.dev/license/). These are kindly provided under different licenses. Please visit their sites to learn more.

## License

Source code in this repository is available under the [MIT License](LICENSE). You are free to use this code however you like. That said, some acknowledgement would be well received.
