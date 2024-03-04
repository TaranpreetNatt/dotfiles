-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<C-d>", function()
  vim.cmd('execute "normal! \\<C-d>zz"')
end, {
  noremap = true,
  silent = true,
  desc = "Move half a page down and center the screen",
})

vim.keymap.set("n", "<C-u>", function()
  vim.cmd('execute "normal! \\<C-u>zz"')
end, {
  noremap = true,
  silent = true,
  desc = "Move half a page up and center the screen",
})

vim.keymap.set("n", "n", "nzz", {
  desc = "Go to next find and center screen and display line number",
  noremap = true,
  silent = true,
})

vim.keymap.set("n", "N", function()
  vim.cmd('execute "normal! \\Nzz"')
end, {
  noremap = true,
  silent = true,
  desc = "Go to next find and center screen and display line number",
})

vim.keymap.set("n", "<S-g>", "<S-g>zz", {
  desc = "Go to bottom of the page and center the screen",
  noremap = true,
  silent = true,
})

vim.keymap.set("n", "<leader>fh", function()
  require("telescope.builtin").find_files({ hidden = true, no_ignore = true })
end, {
  desc = "Find all files",
  noremap = true,
  silent = true,
})

vim.keymap.set("n", "<C-o>", "<C-o>zz", {
  desc = "Go to next find and center screen and display line number",
  noremap = true,
  silent = true,
})
