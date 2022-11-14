local M = {}

local function configure()
  local status_ok, telescope = pcall(require, "telescope")
  if not status_ok then
    vim.notify("failed to require telescope", vim.log.levels.error)
    return
  end

  local actions = require "telescope.actions"
  telescope.setup({
    defaults = {

      prompt_prefix = " ",
      selection_caret = " ",
      path_display = { "smart" },

      mappings = {
        i = {
          ["<c-n>"] = actions.cycle_history_next,
          ["<c-p>"] = actions.cycle_history_prev,

          ["<c-j>"] = actions.move_selection_next,
          ["<c-k>"] = actions.move_selection_previous,

          ["<c-c>"] = actions.close,

          ["<down>"] = actions.move_selection_next,
          ["<up>"] = actions.move_selection_previous,

          ["<cr>"] = actions.select_default,
          ["<c-x>"] = actions.select_horizontal,
          ["<c-v>"] = actions.select_vertical,
          ["<c-t>"] = actions.select_tab,

          ["<c-u>"] = actions.preview_scrolling_up,
          ["<c-d>"] = actions.preview_scrolling_down,

          ["<pageup>"] = actions.results_scrolling_up,
          ["<pagedown>"] = actions.results_scrolling_down,

          ["<tab>"] = actions.toggle_selection + actions.move_selection_worse,
          ["<s-tab>"] = actions.toggle_selection + actions.move_selection_better,
          ["<c-q>"] = actions.send_to_qflist + actions.open_qflist,
          ["<m-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          ["<c-l>"] = actions.complete_tag,
          ["<c-_>"] = actions.which_key, -- keys from pressing <c-/>
        },

        n = {
          ["<esc>"] = actions.close,
          ["<cr>"] = actions.select_default,
          ["<c-x>"] = actions.select_horizontal,
          ["<c-v>"] = actions.select_vertical,
          ["<c-t>"] = actions.select_tab,

          ["<tab>"] = actions.toggle_selection + actions.move_selection_worse,
          ["<s-tab>"] = actions.toggle_selection + actions.move_selection_better,
          ["<c-q>"] = actions.send_to_qflist + actions.open_qflist,
          ["<m-q>"] = actions.send_selected_to_qflist + actions.open_qflist,

          ["j"] = actions.move_selection_next,
          ["k"] = actions.move_selection_previous,
          ["h"] = actions.move_to_top,
          ["m"] = actions.move_to_middle,
          ["l"] = actions.move_to_bottom,

          ["<down>"] = actions.move_selection_next,
          ["<up>"] = actions.move_selection_previous,
          ["gg"] = actions.move_to_top,
          ["g"] = actions.move_to_bottom,

          ["<c-u>"] = actions.preview_scrolling_up,
          ["<c-d>"] = actions.preview_scrolling_down,

          ["<pageup>"] = actions.results_scrolling_up,
          ["<pagedown>"] = actions.results_scrolling_down,

          ["?"] = actions.which_key,
        },
      },
    },
    pickers = {
      -- default configuration for builtin pickers goes here:
      -- picker_name = {
      --   picker_config_key = value,
      --   ...
      -- }
      -- now the picker_config_key will be applied every time you call this
      -- builtin picker
    },
    extensions = {
      media_files = {
        -- filetypes whitelist
        -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
        filetypes = { "png", "webp", "jpg", "jpeg" },
        find_cmd = "rg" -- find command (defaults to `fd`)
      },
      ["ui-select"] = {
        require("telescope.themes").get_dropdown {
          -- even more opts
        }
      }
    }
  })

  telescope.load_extension('media_files')
  telescope.load_extension("ui-select")
end

function M:init()
  local builtin = require('telescope.builtin')
  vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
  vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
  vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
  vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
end

function M:dispose()
end

function M:plugins(plugin_manager)
  plugin_manager:add_packer_packages {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    config = configure,
    requires = {
      { 'nvim-lua/plenary.nvim' },
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
      },
      {
        'nvim-telescope/telescope-media-files.nvim'
      },
      {
        'nvim-telescope/telescope-ui-select.nvim'
      }
    }
  }
end

return M
