local function configure()
  local dap = require("dap")
  dap.adapters.lldb = {
    type = "executable",
    command = "/sbin/lldb", -- adjust as needed
    name = "lldb",
  }

  local lldb = {
    name = "Launch lldb",
    type = "lldb",      -- matches the adapter
    request = "launch", -- could also attach to a currently running process
    program = function()
      return vim.fn.input(
        "Path to executable: ",
        vim.fn.getcwd() .. "/",
        "file"
      )
    end,
    cwd = "${workspaceFolder}",
    stopOnEntry = false,
    args = {},
    runInTerminal = false,
  }
  dap.configurations.c = { lldb }
  dap.configurations.cpp = { lldb }
  dap.configurations.rust = { lldb }
end

return {
  "mfussenegger/nvim-dap",
  config = configure
}
