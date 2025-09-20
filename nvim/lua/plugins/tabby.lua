return {
  "nanozuki/tabby.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- Optional for icons
  config = function()
    vim.o.showtabline = 1 -- Always show tabline
    local theme = {
      fill = "TabLineFill",
      head = "TabLine",
      current_tab = "TabLineSel",
      tab = "TabLine",
      win = "TabLine",
      tail = "TabLine",
    }
    require("tabby").setup({
      line = function(line)
        return {
          { { "", hl = theme.head }, line.sep("", theme.head, theme.fill) },
          line.tabs().foreach(function(tab)
            local hl = tab.is_current() and theme.current_tab or theme.tab
            return {
              line.sep("", hl, theme.fill),
              tab.is_current() and "" or "󰆣", -- Optional indicator
              tab.number(),
              tab.name(), -- Or tab.filename() for buffer names
              tab.close_btn("✕"),
              line.sep("", hl, theme.fill),
              hl = hl,
              margin = " ",
            }
          end),
          { line.sep("", theme.tail, theme.fill), { "", hl = theme.tail } },
          hl = theme.fill,
        }
      end,
    })
  end,
}
