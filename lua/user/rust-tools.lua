local M = {
  "simrat39/rust-tools.nvim",
}

vim.g.rustfmt_autosave = 1

function M.config()
  local rt = require "rust-tools"

  rt.setup {
    server = {
      standalone = true,
      tools = {
         inlay_hints = {
          auto = true,
          show_parameter_hints = true,
        },
      },
      settings = {
        ["rust_analyzer"] = {
          cargo = {
            autoReload = true,
          },
          checkOnSave = {
            allFeatures = true,
            command = "clippy",
          },
        },
      },
    },
  }
end

return M
