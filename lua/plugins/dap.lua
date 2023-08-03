local function dap_config()
  local dap = require("dap")

  dap.adapters.lldb = {
    type = "executable",
    command = "/usr/bin/lldb-vscode", -- adjust as needed
    showDisassembly = "never",
    name = "lldb",
  }

  local lldb = {
    name = "Launch lldb",
    type = "lldb",      -- matches the adapter
    request = "launch", -- could also attach to a currently running process
    program = function()
      return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
    end,
    cwd = "${workspaceFolder}",
    stopOnEntry = false,
    showDisassembly = "never",
    setupCommands = {
      {
        text = '-enable-pretty-printing',
        description = "enable pretty printing",
        ignoreFailures = false,
      }
    },
    args = {}
  }

  dap.configurations.cpp = { lldb }
  dap.configurations.c = { lldb }
  dap.configurations.rust = { lldb }

  local namespace = vim.api.nvim_create_namespace("dap-hlng")
  vim.api.nvim_set_hl(namespace, 'DapBreakpoint', { fg = '#eaeaeb', bg = '#ffffff' })
  vim.api.nvim_set_hl(namespace, 'DapLogPoint', { fg = '#eaeaeb', bg = '#ffffff' })
  vim.api.nvim_set_hl(namespace, 'DapStopped', { fg = '#eaeaeb', bg = '#ffffff' })

  vim.fn.sign_define('DapBreakpoint', {
    text = '',
    texthl = 'DapBreakpoint',
    linehl = 'DapBreakpoint',
    numhl = 'DapBreakpoint'
  })
  vim.fn.sign_define('DapBreakpointCondition',
    { text = 'ﳁ', texthl = 'DapBreakpoint', linehl = 'DapBreakpoint', numhl = 'DapBreakpoint' })
  vim.fn.sign_define('DapBreakpointRejected',
    { text = '', texthl = 'DapBreakpoint', linehl = 'DapBreakpoint', numhl = 'DapBreakpoint' })
  vim.fn.sign_define('DapLogPoint', { text = '', texthl = 'DapLogPoint', linehl = 'DapLogPoint', numhl = 'DapLogPoint' })
  vim.fn.sign_define('DapStopped', { text = '', texthl = 'DapStopped', linehl = 'DapStopped', numhl = 'DapStopped' })


  local map = vim.keymap.set
  local opts = { noremap = true, silent = true }
  map("n", "<leader>dt", dap.terminate, opts);
  map("n", "<leader>dd", function()
    if dap.session() == nil then
      dap.continue()
    else
      dap.terminate()
    end
  end, opts);
  map("n", "<leader>dc", dap.continue, opts);
  map("n", "<leader>dn", dap.step_over, opts);
  map("n", "<leader>di", dap.step_into, opts);
  map("n", "<leader>do", dap.step_out, opts);
  map("n", "<leader>db", dap.toggle_breakpoint, opts)
  map("n", "<leader>l", dap.down, opts);
  map("n", "<leader>h", dap.up, opts);
  map("n", "<leader>dg", dap.focus_frame, opts);
  map("n", "<leader>dk", function()
    require ("dap.ui.widgets").hover()
  end, opts)
  map("n", "<leader>dS", function()
    local widgets = require ("dap.ui.widgets")
    widgets.centered_float(widgets.frames)
  end, opts)
  map("n", "<leader>dV", function()
    local widgets = require ("dap.ui.widgets")
    widgets.centered_float(widgets.scopes)
  end, opts)
end

local function dap_ui_config()
  local dap, dapui = require("dap"), require("dapui")
  dapui.setup {
    controls = {
      element = "repl",
      enabled = true,
      icons = {
        disconnect = "",
        pause = "",
        play = "",
        run_last = "",
        step_back = "",
        step_into = "",
        step_out = "",
        step_over = "",
        terminate = ""
      }
    },
    element_mappings = {},
    expand_lines = true,
    floating = {
      border = "single",
      mappings = {
        close = { "q", "<Esc>" }
      }
    },
    force_buffers = true,
    icons = {
      collapsed = "",
      current_frame = "",
      expanded = ""
    },
    layouts = {
      {
        elements = {
          {
            id = "stacks",
            size = 0.5
          },
          {
            id = "scopes",
            size = 0.5
          }
        },
        position = "bottom",
        size = 10
      } },
    mappings = {
      edit = "e",
      expand = { "<CR>", "<2-LeftMouse>" },
      open = { "o" },
      remove = "d",
      repl = "r",
      toggle = "t"
    },
    render = {
      indent = 1,
      max_value_lines = 100
    }
  }

  dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
  end
  dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
  end

  local map = vim.keymap.set
  local opts = { noremap = true, silent = true }
  map("n", "<leader>ds", function()
    dapui.float_element("stacks", { enter = true })
  end, opts)
  map("n", "<leader>dv", function()
    dapui.float_element("scopes", { enter = true })
  end, opts)
  map("n", "<leader>dw", function()
    dapui.float_element("watches", { enter = true })
  end, opts)
  map("n", "<leader>dt", function()
    dapui.float_element("repl", { enter = true })
  end, opts)
  map("n", "<leader>de", function()
    local expr = vim.fn.input("Expression: ")
    dapui.eval(expr)
  end, opts)
  map("n", "<leader>du", function()
    dapui.toggle()
  end, opts)
end

local function dap_virtual_text_config()
  require("nvim-dap-virtual-text").setup {
    enabled = true,                     -- enable this plugin (the default)
    enabled_commands = true,            -- create commands DapVirtualTextEnable, DapVirtualTextDisable, DapVirtualTextToggle, (DapVirtualTextForceRefresh for refreshing when debug adapter did not notify its termination)
    highlight_changed_variables = true, -- highlight changed values with NvimDapVirtualTextChanged, else always NvimDapVirtualText
    highlight_new_as_changed = false,   -- highlight new variables in the same way as changed variables (if highlight_changed_variables)
    show_stop_reason = true,            -- show stop reason when stopped for exceptions
    commented = false,                  -- prefix virtual text with comment string
    only_first_definition = true,       -- only show virtual text at first definition (if there are multiple)
    all_references = false,             -- show virtual text on all all references of the variable (not only definitions)
    --- A callback that determines how a variable is displayed or whether it should be omitted
    --- @param variable Variable https://microsoft.github.io/debug-adapter-protocol/specification#Types_Variable
    --- @param buf number
    --- @param stackframe dap.StackFrame https://microsoft.github.io/debug-adapter-protocol/specification#Types_StackFrame
    --- @param node userdata tree-sitter node identified as variable definition of reference (see `:h tsnode`)
    --- @return string|nil A text how the virtual text should be displayed or nil, if this variable shouldn't be displayed
    display_callback = function(variable, _buf, _stackframe, _node)
      return variable.name .. ' = ' .. variable.value
    end,

    -- experimental features:
    virt_text_pos = 'eol',  -- position of virtual text, see `:h nvim_buf_set_extmark()`
    all_frames = false,     -- show virtual text for all stack frames not only current. Only works for debugpy on my machine.
    virt_lines = false,     -- show virtual lines instead of virtual text (will flicker!)
    virt_text_win_col = nil -- position the virtual text at a fixed window column (starting from the first text column) ,
    -- e.g. 80 to position at column 80, see `:h nvim_buf_set_extmark()`
  }
end

return {
  "mfussenegger/nvim-dap",
  --disable = true,
  requires = {
    {
      "rcarriga/nvim-dap-ui",
      config = dap_ui_config
    },
    {
      "theHamsta/nvim-dap-virtual-text",
      config = dap_virtual_text_config
    }
  },
  config = dap_config
}
