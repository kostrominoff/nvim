local M = {
  "nvim-telescope/telescope.nvim",
  commit = "40c31fdde93bcd85aeb3447bb3e2a3208395a868",
  event = "Bufenter",
  cmd = { "Telescope" },
  dependencies = {
    {
      "ahmedkhalf/project.nvim",
    },
  },
}

local actions = require "telescope.actions"
local action_state = require "telescope.actions.state"

M.opts = {
  defaults = {
    prompt_prefix = " ",
    selection_caret = " ",
    path_display = { "smart" },
    file_ignore_patterns = { ".git/", "node_modules" },
    mappings = {
      i = {
        ["<Down>"] = actions.move_selection_next,
        ["<Up>"] = actions.move_selection_previous,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      },
    },
  },
  pickers = {
    buffers = {
      mappings = {
        i = {
          ["<C-c>"] = function(prompt_bufnr)
            local current_picker = action_state.get_current_picker(prompt_bufnr)
            current_picker:delete_selection(function(selection)
              local bufnr = selection.bufnr
              -- get associated window(s)
              local winids = vim.fn.win_findbuf(bufnr)
              -- fill winids with new empty buffers
              for _, winid in ipairs(winids) do
                -- check documentation of nvim_create_buf carefully about whether you want a scratch buffer or something else
                local new_buf = vim.api.nvim_create_buf(false, true)
                vim.api.nvim_win_set_buf(winid, new_buf)
              end
              -- remove buffer at last
              vim.api.nvim_buf_delete(bufnr, {force = true})
            end)
          end
        }
      }
    }
  }
}

return M
