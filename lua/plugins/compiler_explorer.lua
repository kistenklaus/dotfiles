local function configure()

end

return {
  "krady21/compiler-explorer.nvim",
  ft = {"cpp", "c", "objc", "rust"},
  requires = {
    "stevearc/dressing.nvim"
  },
  config = configure
}
