set cursorline
set tabstop=4
set softtabstop=4
set expandtab
colorscheme adventurous
set number
set showcmd
set wildmenu
set showmatch
set incsearch
set hlsearch
nnoremap B ^
nnoremap E $
nnoremap ^ <nop>
nnoremap $ <nop>
hi clear CursorLine
hi CursorLine gui=underline cterm=underline
" Commenting blocks of code.
autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '
noremap <silent> cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

map ; :
noremap ;; ;
