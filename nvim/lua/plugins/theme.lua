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
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
    config = function()
      vim.g.everforest_background = "hard"
      vim.g.everforest_enable_italic = 1
      vim.g.everforest_transparent_background = false
      vim.g.everforest_ui_contrast = "high"
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
