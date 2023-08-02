local M = {
  "rust-lang/rust.vim",
}

function M.config()
  require("rust").setup {}
end

return M
