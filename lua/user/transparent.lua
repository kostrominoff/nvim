local M = {
  "xiyaowong/transparent.nvim",
  lazy = false,
  priority = 1000,
}

function M.config()
  local status_ok, _ = pcall(vim.cmd.colorscheme, M.name)
  if not status_ok then
    return
  end
  vim.cmd("TransparentEnable")
end

return M
