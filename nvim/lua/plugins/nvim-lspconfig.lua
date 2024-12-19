return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    -- LazyVim already sets up on_attach and capabilities,
    -- so you can use them directly from opts
    local util = require("lspconfig.util")

    opts.servers.gopls = {
      on_attach = opts.on_attach,
      capabilities = opts.capabilities,
      cmd = { "gopls" },
      filetypes = { "go", "gomod", "gowork", "gotmpl" },
      root_dir = util.root_pattern("go.work", "go.mod", ".git"),
      settings = {
        gopls = {
          completeUnimported = true,
          usePlaceholders = true,
          analyses = {
            unusedparams = true,
          },
        },
      },
    }

    return opts
  end,
}
