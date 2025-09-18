return {
  "ray-x/navigator.lua",
  event = "VeryLazy",
  dependencies = {
    { "hrsh7th/nvim-cmp" },
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
    { "ray-x/guihua.lua", run = "cd lua/fzy && make" },
    {
      "ray-x/go.nvim",
      event = { "CmdlineEnter" },
      ft = { "go", "gomod" },
      build = ':lua require("go.install").update_all_sync()',
    },
    {
      "ray-x/lsp_signature.nvim", -- Show function signature when you type
      event = "VeryLazy",
      config = function()
        require("lsp_signature").setup()
      end,
    },
  },
  config = function()
    require("go").setup()

    -- Ensure treesitter is available before setting up navigator
    local ts_ok = pcall(require, "nvim-treesitter.configs")
    if not ts_ok then
      vim.notify("Treesitter not available, skipping navigator setup", vim.log.levels.WARN)
      return
    end

    require("navigator").setup({
      lsp_signature_help = true, -- enable ray-x/lsp_signature
      lsp = { format_on_save = true },
    })

    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "go" },
      callback = function(ev)
        -- CTRL/control keymaps
        vim.api.nvim_buf_set_keymap(0, "n", "<leader><C-i>", ":GoImport<CR>", {})
        vim.api.nvim_buf_set_keymap(0, "n", "<leader><C-b>", ":GoBuild %:h<CR>", {})
        vim.api.nvim_buf_set_keymap(0, "n", "<leader><C-t>", ":GoTestPkg<CR>", {})
        vim.api.nvim_buf_set_keymap(0, "n", "<leader><C-c>", ":GoCoverage -p<CR>", {})

        -- Opens test files
        vim.api.nvim_buf_set_keymap(0, "n", "<leader>ga", ":lua require('go.alternate').switch(true, '')<CR>", {}) -- Test
        vim.api.nvim_buf_set_keymap(0, "n", "<leader>gv", ":lua require('go.alternate').switch(true, 'vsplit')<CR>", {}) -- Test Vertical
        vim.api.nvim_buf_set_keymap(0, "n", "<leader>gs", ":lua require('go.alternate').switch(true, 'split')<CR>", {}) -- Test Split
      end,
      group = vim.api.nvim_create_augroup("go_autocommands", { clear = true }),
    })
  end,
}
