""" Map leader to space ---------------------
let mapleader=" "

""" Plugins  --------------------------------

""" Plugin settings -------------------------
let g:argtextobj_pairs="[:],(:),<:>"

""" Common settings -------------------------
set showmode
set so=5
set incsearch
set visualbell
set noerrorbells
set nu
set clipboard=unnamedplus               " Copy paste between vim and everything else

"""set idearefactormode=keep
""" Idea specific settings ------------------
""" set ideajoin
set ideastatusicon=gray
""" set idearefactormode=keep

""" Mappings --------------------------------
""" map <leader>d <Action>(Debug)
nmap <leader>dd <Action>(CloseContent)
nmap <leader>d! <Action>(CloseAllEditorsButActive)
nmap <leader>w <Action>(HideAllWindows)
nmap <leader>e <Action>(ActivateProjectToolWindow)
nmap <leader>t <Action>(ActivateTerminalToolWindow)
nmap <leader>l <Action>(ReformatCode)

nmap gr <Action>(GotoRelated)
nmap gd <Action>(GotoImplementation)

nmap <leader>r <Action>(RenameElement)
nmap <leader>c <Action>(Stop)

nmap <leader>ff <Action>(GotoFile)
nmap <leader>fc <Action>(GotoClass)
nmap <leader>fl <Action>(FindInPath)

nmap <leader>a <Action>(GotoAction)
nmap <leader>h <Action>(Vcs.ShowTabbedFileHistory)
nmap <leader>n <Action>(GotoNextError)

nmap <leader>b <Action>(ToggleLineBreakpoint)
nmap <leader>o <Action>(FileStructurePopup)

nmap <leader>q <Action>(ShowIntentionActions)

nmap <Tab> <Action>(NextTab)
nmap <S-Tab> <Action>(PreviousTab)
