local M = {
  "windwp/nvim-ts-autotag",
}

function M.config()
  require("nvim-treesitter.configs").setup {
    autotag = {
      enable = true,
      enable_rename = true,
      enable_close = true,
      enable_close_on_slash = false,
    },
  }
end

return M
