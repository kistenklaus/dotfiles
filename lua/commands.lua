vim.api.nvim_create_user_command("Pwd", function()
  vim.cmd[[echo @%]]
end, {nargs = 0})
