return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      fish = { "fish_indent" },
      javascript = { "clang-format" },
      lua = { "stylua" },
      python = { "black" },
      sh = { "shfmt" },
      go = { "gofmt" },
    },
  },
}
