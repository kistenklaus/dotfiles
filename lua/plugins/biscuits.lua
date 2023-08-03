local function configure()
  require("nvim-biscuits").setup {
    toggle_keybind = "<leader>sb>",
    show_on_start = true,
    cursor_line_only = true,
    default_config = {
      max_length = 12,
      min_distance = 12,
      prefix_string = " 📎 "
    },
    language_config = {
      html = {
        prefix_string = " 🌐 "
      },
      javascript = {
        prefix_string = " ✨ ",
        max_length = 80
      },
      python = {
        disabled = true
      }
    }
  }
end

return {
  "code-biscuits/nvim-biscuits",
  config = configure
}
