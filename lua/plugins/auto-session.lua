function _G.close_all_floating_wins()
  for _, win in ipairs(vim.api.nvim_list_wins()) do
    local config = vim.api.nvim_win_get_config(win)
    if config.relative ~= '' then
      vim.api.nvim_win_close(win, false)
    end
  end
end

return {
  'rmagatti/auto-session',
  config = function()
    require("auto-session").setup {
      bypass_session_save_file_types = nil, -- table: Bypass auto save when only buffer open is one of these file types
      auto_session_create_enabled = false,
      pre_save_cmds = { _G.close_all_floating_wins },
      post_restore_cmds = { function()
        vim.cmd([[edit %]])
      end},
      cwd_change_handling = {
        restore_upcoming_session = true,   -- already the default, no need to specify like this, only here as an example
        pre_cwd_changed_hook = nil,        -- already the default, no need to specify like this, only here as an example
        post_cwd_changed_hook = function() -- example refreshing the lualine status line _after_ the cwd changes
          require("lualine").refresh()     -- refresh lualine so the new session name is displayed in the status bar
        end
      },
    }

  local map = vim.keymap.set
  local opts = { noremap = false, silent = true }
  map("n", "<leader>so", ":Autosession search<cr>", opts)
  map("n", "<leader>sd", ":Autosession delete<cr>", opts)

 end
}
