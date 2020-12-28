setlocal sw=4
setlocal ts=4

" MATLAB code checker
autocmd BufEnter *.m compiler mlint
