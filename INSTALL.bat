@echo off
gvim82.exe

mkdir "C:%homepath%\vimfiles\undodir"
mkdir "C:%homepath%\vimfiles\after"
mkdir "C:%homepath%\vimfiles\after\plugin"
mkdir "C:%homepath%\vimfiles\autoload"

PlugVim.ps1

     :: @REM mkdir "C:%homepath%/.vim/undodir"
     :: @REM mkdir "C:%homepath%/.vim/after"
     :: @REM mkdir "C:%homepath%/.vim/after/plugin"

move "vimrc" "C:%homepath%\.vimrc"
move colors\* "C:%homepath%\vimfiles\colors\"
move plug.vim "C:%homepath%\vimfiles\autoload\plug.vim"

echo "autocmd StdinReadPre * let s:std_in=1" > C:%homepath%\vimfiles\after\plugin\NERDTreeAutoExecute.vim
echo "autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | silent NERDTree | endif" >> C:%homepath%\vimfiles\after\plugin\NERDTreeAutoExecute.vim
