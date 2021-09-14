" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    "autocmd VimEnter * PlugInstall
    "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    Plug 'pechorin/any-jump.vim'
    " status bar
    " Themes
    Plug 'morhetz/gruvbox'
    Plug 'neoclide/coc.nvim', {'branch':'release'}
    Plug 'jiangmiao/auto-pairs'
    Plug 'alvan/vim-closetag'
    Plug 'ryanoasis/vim-devicons'
    Plug 'beeender/Comrade'
    Plug 'dense-analysis/ale' 
    Plug 'tpope/vim-fugitive'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    Plug 'Yggdroot/indentLine'
    " Sintax checking 
    Plug 'uiiaoo/java-syntax.vim'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
    Plug 'nvim-treesitter/playground'
    " Vim icons and airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'kyazdani42/nvim-web-devicons'
    " Git status show
    Plug 'airblade/vim-gitgutter'
    " Smooth scrolling
    Plug 'karb94/neoscroll.nvim'
    " Bufferline
    Plug 'ryanoasis/vim-devicons' " vimscript
    Plug 'akinsho/bufferline.nvim'
    " Easymotion for smoother movement
    Plug 'easymotion/vim-easymotion'
    " Emmet for code creation based on file tipe
    Plug 'mattn/emmet-vim'
    " Buffer closing
    Plug 'moll/vim-bbye'
    call plug#end()

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust" },  -- list of language that will be disabled
  }
}
require("bufferline").setup{}
EOF
