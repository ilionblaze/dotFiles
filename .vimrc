color desert

set nowrap 			"no line wrapping
set ic 				"case insensitive match
set ts=4 			"tab stops set to 4
set shiftwidth=2 	"number of spaces for indenting
set autoindent 		"use auto indenting
set smartindent 	"use smart indenting
set hls 			"use highlighted search

filetype plugin on

"variable tab completion
function InsertTabWrapper() 
	let col = col('.') - 1 
	if !col || getline('.')[col - 1] !~ '\k' 
    return "\<tab>" 
	else 
    return "\<c-p>" 
	endif 
endfunction 
inoremap <tab> <c-r>=InsertTabWrapper()<cr>

"This maps ctrl+j and ctrl+k to moving between :split windows
nnoremap <silent> <C-J> <C-W>j<C-W>_
nnoremap <silent> <C-K> <C-W>k<C-W>_

"Remove search hilighting
nnoremap <silent> <F3> :noh<CR>
"Save current file and run all perl tap tests
nnoremap <silent> <F5> :w<CR>:!./tap.t %:p<CR>
"Make windows equal sizes
nnoremap <silent> <F7> <c-w>=
"Maximize window
nnoremap <silent> <F8> <c-w>_

