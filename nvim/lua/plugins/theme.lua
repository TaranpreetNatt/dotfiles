return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
  {
    "ellisonleao/gruvbox.nvim",
    name = "gruvbox",
    priority = 1000,
    config = true,
    opts = {
      transparent_mode = false,
      contrast = "hard",
    },
  },
  {
    "Mofiqul/dracula.nvim",
    name = "dracula",
    priority = 1000,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
  },
  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    priority = 1000,
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  {
    "scottmckendry/cyberdream.nvim",
    name = "cyberdream",
    priority = 1000,
  },
  {
    "sainnhe/everforest",
    name = "everforest",
    priority = 1000,
    config = function()
      vim.o.termguicolors = true
      -- Set to dark mode
      vim.o.background = "dark"

      -- Everforest configuration
      vim.g.everforest_background = "hard" -- hard contrast
      vim.g.everforest_enable_italic = 1 -- enable italics
      vim.g.everforest_disable_italic_comment = 0 -- keep italic comments
      vim.g.everforest_transparent_background = 0 -- opaque background
      vim.g.everforest_ui_contrast = "high" -- high UI contrast
      vim.g.everforest_better_performance = 1 -- better performance
      vim.g.everforest_diagnostic_text_highlight = 1 -- highlight diagnostic text
      vim.g.everforest_diagnostic_line_highlight = 1 -- highlight diagnostic lines
      vim.g.everforest_diagnostic_virtual_text = "colored" -- colored virtual text

      -- Load the colorscheme
      vim.cmd("colorscheme everforest")
    end,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
      variant = "moon",
      styles = {
        bold = true,
        italic = true,
      },
      highlight_groups = {
        Visual = { fg = "#E0E6ED" },
      },
    },
  },
}
