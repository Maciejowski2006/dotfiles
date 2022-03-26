" Plugins! (requires Plugged)
call plug#begin('~/.config/nvim/plugged')
Plug 'OmniSharp/omnisharp-vim'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'lambdalisue/suda.vim'
call plug#end()

" Basic stuff
set encoding=utf-8
set relativenumber number
set tabstop=4
set autoindent
set splitbelow splitright
set wrap
set linebreak

" Custom statusline
set statusline+=[%{StatuslineGit()}\ ]%F%=\ %=File\ Size:\ %{FileSize(line2byte('$')+len(getline('$')))}%=\ %=Line:\ %l,%c%=\ %=File\ Progress:\ %p%%

function! FileSize(bytes)
	let l:bytes = a:bytes | let l:sizes = ['B', 'KB', 'MB', 'GB'] | let l:i = 0
	while l:bytes >= 1024 | let l:bytes = l:bytes / 1024.0 | let l:i += 1 | endwhile
	return l:bytes > 0 ? printf(' %.1f%s ', l:bytes, l:sizes[l:i]) : ''
endfunction

function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

" Map Ctrl+move to split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Shortcut for changing numbers [normal | relative]
map <C-n><C-n> :set relativenumber! <Enter>

" Copy selected text to clipboard
vnoremap <C-c> "*Y :let @+=@*<CR>

" File autocompletion
set wildmode=longest,list,full

" Delete trailing whitespaces on save
autocmd BufWritePre * %s/\s\+$//e

" Run XRDB whenever .Xresources are update
autocmd BufWritePost ~/.Xresources !xrdb%
