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

    opts.servers.basedpyright = {
      on_attach = opts.on_attach,
      capabilities = opts.capabilities,
      cmd = { "basedpyright-langserver", "--stdio" },
      filetypes = { "python" },
      root_dir = util.root_pattern("pyproject.toml", "setup.py", "setup.cfg", "requirements.txt", "Pipfile", ".git"),
      settings = {
        basedpyright = {
          analysis = {
            autoImportCompletions = true,
            autoSearchPaths = true,
            diagnosticMode = "openFilesOnly", -- Limits analysis to open files for faster performance
            typeCheckingMode = "standard",    -- Balanced type checking; use "off" for max speed or "strict" for more rigor
            useLibraryCodeForTypes = true,
            inlayHints = {
              variableTypes = false, -- Disables inline variable type hints like ": set[Any]"
            },
          },
        },
        python = {
          analysis = {
            ignore = { "**/node_modules", "**/__pycache__" }, -- Shared with pyright config if needed
          },
        },
      },
    }

    -- opts.servers.pylsp = {
    --   on_attach = opts.on_attach,
    --   capabilities = opts.capabilities,
    --   init_options = {
    --     skip_token_initialization = true,
    --   },
    --   settings = {
    --     pylsp = {
    --       plugins = {
    --         -- Disable heavy analysis plugins
    --         rope_autoimport = { enabled = false },
    --         rope_completion = { enabled = false },
    --         pylint = { enabled = false },
    --         mccabe = { enabled = false },
    --         preload = { enabled = false },
    --
    --         -- Keep essential plugins but optimize
    --         pycodestyle = {
    --           enabled = true,
    --           maxLineLength = 1000,
    --           ignore = { "E501", "W503" },
    --         },
    --         pyflakes = { enabled = true },
    --         jedi_completion = {
    --           enabled = true,
    --           include_params = true,
    --           cache_for = { "pandas", "numpy", "typing" },
    --         },
    --         jedi_hover = { enabled = true },
    --         jedi_references = { enabled = false }, -- Disable heavy reference search
    --         jedi_signature_help = { enabled = true },
    --         jedi_symbols = { enabled = false },    -- Disable symbol search
    --       },
    --     },
    --   },
    -- }

    return opts
  end,
}
