" MATLAB code checker
autocmd Bufread *.m compiler mlint

" Set commentary string
setlocal commentstring=\%\ %s

" Vim-Matlab-Behave configuration
" Mappings
let g:matlab_mapping_kind = 1 " set to 0 for default MATLAB mappings

" Script autoexecution
let g:matlab_behave_autoexec = 1
