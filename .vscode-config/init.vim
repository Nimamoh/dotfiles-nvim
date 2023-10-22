" Message de bienvenue
autocmd VimEnter * echom  "Your own neovim distribution for vscode 💪"

" Our .vscode-neovim directory
let data_dir = '~/.vscode-neovim'
let plugFile = data_dir . '/plug.vim'

" Download plug.vim if it doesn't exist
" Then install the plugins in this file
if empty(glob(plugFile))
  silent execute '!curl -fLo '.plugFile.' --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  execute "autocmd VimEnter * PlugInstall --sync | source " . expand('%:p')
endif

" Source vim-plug directly since we install it in a non-autoload directory
execute "source " . expand(plugFile)

call plug#begin(data_dir)
Plug 'chaoren/vim-wordmotion'
Plug 'justinmk/vim-sneak'
Plug 'rhysd/clever-f.vim'
Plug 'tpope/vim-surround'
call plug#end()

"
" Clever-f config
"
let g:clever_f_across_no_line = 0
let g:clever_f_chars_match_any_signs = 1
let g:clever_f_fix_key_direction = 0
let g:clever_f_mark_direct = 0
let g:clever_f_smart_case = 1

"
" vim sneak
"
let g:sneak#s_next = 1 " Enable using 's' to go next instead of using ;
let g:sneak#use_ic_scs = 1
let g:sneak#label = 1

" Sync vim yanking with system clipboard
set clipboard=unnamedplus

"
" Integration with spacecode
"
function! s:majorMode() abort
  call VSCodeNotify('vspacecode.space')
  call VSCodeNotify('whichkey.triggerKey', "m")
endfunction

noremap <space> <Cmd>call VSCodeNotify('vspacecode.space')<CR>
xnoremap <space> <Cmd>call VSCodeNotify('vspacecode.space')<CR>

noremap , <Cmd>call <SID>majorMode()<CR>
xnoremap , <Cmd>call <SID>majorMode()<CR>