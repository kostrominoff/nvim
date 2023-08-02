local M = {
  "folke/which-key.nvim",
  commit = "5224c261825263f46f6771f1b644cae33cd06995",
  event = "VeryLazy",
}

function M.config()
  require("which-key").register({
    w = "Save",
    f = {
      name = "Find",
      b =  "Find buffers",
      f = "Find files",
      p = "Find projects",
      t = "Find text",
    },
    l = {
      name = "LSP",
      a = "Code actions",
      f = "Format",
      i = "Information",
      I = "Mason",
      r = "Rename",
      s = "Signature help"
    },
    ["<space>"] = "Find buffers",
    ["/"] = "Toggle comment",
    h = "Hide search highlight",
    d = {
      name = "DAP",
      b = "Toggle breakpoint",
      c = "Continue",
      i = "Step into",
      l = "Run last",
      o = "Step over",
      O = "Step out",
      r = "Repl toggle",
      t = "Terminate",
      u = "Toggle UI",
      g = {
        name = "Git",
        g = "Lazygit"
      },
    },
  },
  {
    prefix = "<leader>"
  })
end

return M
