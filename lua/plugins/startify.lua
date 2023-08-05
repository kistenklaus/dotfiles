
local function configure()
  vim.cmd[[
    let g:startify_lists = [
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'files',     'header': ['   MRU']            },
          \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
          \ ]
    let g:startify_session_dir = "~/.local/share/nvim/sessions/"
  ]]

end

return {
  "mhinz/vim-startify",
  config = configure,
}
