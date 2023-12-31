local M = {
  "ellisonleao/gruvbox.nvim",
  lazy = false,
  priority = 1000,
}

M.name = "gruvbox"
function M.config()
  local gruvbox = require("gruvbox")
  gruvbox.setup({
     transparent_mode = true
  })

  local status_ok, _ = pcall(vim.cmd.colorscheme, M.name)
  if not status_ok then
    return
  end
end

return M
