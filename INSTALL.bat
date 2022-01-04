@echo off
gvim82.exe
Git-2.34.1-64-bit.exe
node-v16.13.1-x86.msi

mkdir "C:%homepath%\vimfiles\undodir"
mkdir "C:%homepath%\vimfiles\after"
mkdir "C:%homepath%\vimfiles\after\plugin"
mkdir "C:%homepath%\vimfiles\autoload"

powershell " powershell $(cat C:%homepath%\Downloads\VIM_for_Windows-main\PlugVim.ps1)"

     :: @REM mkdir "C:%homepath%/.vim/undodir"
     :: @REM mkdir "C:%homepath%/.vim/after"
     :: @REM mkdir "C:%homepath%/.vim/after/plugin"

move "vimrc" "C:%homepath%\.vimrc"
move colors\* "C:%homepath%\vimfiles\colors\"

echo "autocmd StdinReadPre * let s:std_in=1" > C:%homepath%\vimfiles\after\plugin\NERDTreeAutoExecute.vim
echo "autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | silent NERDTree | endif" >> C:%homepath%\vimfiles\after\plugin\NERDTreeAutoExecute.vim
