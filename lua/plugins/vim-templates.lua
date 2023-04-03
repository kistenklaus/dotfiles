local function configure()
  vim.cmd[[
    let g:tmpl_search_paths = ['~/.config/nvim/templates/']
    let g:tmpl_author_email = 'karlsasssie@gmail.com'
  ]]
end

return {
  "tibabit/vim-templates",
  config = configure
}
