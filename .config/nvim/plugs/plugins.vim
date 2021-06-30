"-------------------------------------------------
" Auto-install vim-plug
"-------------------------------------------------

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'stsewd/fzf-checkout.vim'
    Plug 'tpope/vim-commentary'
    Plug 'haishanh/night-owl.vim'
    " Plug 'ayu-theme/ayu-vim' 
	Plug 'airblade/vim-rooter'	
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'sheerun/vim-polyglot'
	Plug 'christoomey/vim-tmux-navigator'
	Plug 'tpope/vim-fugitive'
	Plug 'preservim/nerdtree'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'airblade/vim-gitgutter'
	Plug 'rhysd/git-messenger.vim'
	Plug 'voldikss/vim-floaterm'
  Plug 'honza/vim-snippets'
call plug#end()

"--------------------------------------------------
" Automatically install missing plugins on startup
"--------------------------------------------------

autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
