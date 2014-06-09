" Modeline and Notes {
" vim: set foldmarker={,} foldlevel=0 foldmethod=marker spell:
"
" This is the personal .vimrc file of Pavan Kumar Sunkara
" }

" Environment {
	" Basic {
		set nocompatible
		set t_Co=16
		set background=dark
	" }

	" Pathogen {
		call pathogen#infect()
		call pathogen#helptags()
	" }
" }

" General {
	syntax on
	filetype plugin indent on
	set encoding=utf-8
" }

" Variables {
	let g:github_user = 'pksunkara'
" }

" Vim UI {
	set tabpagemax=15
	set showmode
	set laststatus=2
	set number
	set showmatch
	set ignorecase
	set smartcase
	set list
	set backspace=indent,eol,start
	set listchars=extends:»,precedes:«,tab:›\ ,trail:‹
	set wildignore=*.class,*.o,*~,*.pyc,.git,third_party,node_modules,build
	set vb
	set t_vb=
" }

" Formatting {
	set nowrap
	set autoindent
	set noexpandtab
	set shiftwidth=4
	set tabstop=4
	set softtabstop=4
	set pastetoggle=<F12>
" }

" Key Mappings {
	nnoremap ; :
	nnoremap Y y$
" }

" Plugins {
	" CtrlP {
		let g:ctrlp_extensions = ['funky']
		let g:ctrlp_map = '<leader>t'

		nnoremap <silent> <leader>b :CtrlPBuffer<CR>
		nnoremap <silent> <leader>f :CtrlPFunky<CR>
	" }

	" Gundo {
		nnoremap <silent> <leader>u :GundoToggle<CR>
	" }

	" Bufferline {
		let g:bufferline_echo = 0
	" }

	" MultipleCursor {
		let g:multi_cursor_use_next_key = '<C-d>'
		let g:multi_cursor_exit_from_visual_mode = 0
		let g:multi_cursor_exit_from_insert_mode = 0
	" }

	" Airline {
		let g:airline_powerline_fonts = 1
		let g:airline#extensions#hunks#hunk_symbols = ['⊕ ', '⊙ ', '⊗ ']
		let g:airline#extensions#tabline#enabled = 1
		let g:airline#extensions#ctrlp#color_template = 'normal'
		let g:airline_theme = 'wombat'
	" }

	" NerdTree {
		nnoremap <silent> <leader>n :NERDTreeToggle<CR>

		let NERDTreeShowBookmarks=1
		let NERDTreeIgnore=['\.pyc', '\~$', '\.sw*$', '\.git', '\.hg', '\.svn']
		let NERDTreeChDirMode=0
		let NERDTreeQuitOnOpen=1
		let NERDTreeShowHidden=1
		let NERDTreeKeepTreeInNewTab=1
	" }

	" Tagbar {
		nnoremap <silent> <leader>l :TagbarToggle<CR>
	" }

	" GitGutter {
		let g:gitgutter_sign_column_always = 1

		let g:gitgutter_sign_added = '⊕'
		let g:gitgutter_sign_modified = '⊙'
		let g:gitgutter_sign_removed = '⊗'
		let g:gitgutter_sign_modified_removed = '⊖'

		nnoremap <leader>hs :GitGutterStageHunk<CR>
		nnoremap <leader>hr :GitGutterRevertHunk<CR>

		nmap <leader>hn <Plug>GitGutterNextHunk
		nmap <leader>hp <Plug>GitGutterPrevHunk
	" }

	" Fugitive {
		nnoremap <silent> <leader>gs :Gstatus<CR>
		nnoremap <silent> <leader>gd :Gdiff<CR>
		nnoremap <silent> <leader>gc :Gcommit<CR>
		nnoremap <silent> <leader>gb :Gblame<CR>
		nnoremap <silent> <leader>gl :Glog<CR>
	" }

	" Golang {
		autocmd FileType go autocmd BufWritePre <buffer> Fmt
		autocmd Filetype go nnoremap <silent> <leader>oc :exe 'Godoc ' . expand('<cword>')<CR>
		autocmd Filetype go nnoremap <silent> <leader>oi :exe 'Import ' . expand('<cword>')<CR>
		autocmd Filetype go nnoremap <silent> <leader>od :exe 'Drop ' . expand('<cword>')<CR>
	" }

" }

" Highight {
	" SignColumn {
		highlight clear SignColumn
	" }

	" GitGutter {
		highlight GitGutterAdd cterm=bold ctermfg=green
		highlight GitGutterDelete cterm=bold ctermfg=red
		highlight GitGutterChange cterm=bold ctermfg=cyan
		highlight GitGutterChangeDelete cterm=bold ctermfg=yellow
	" }

	" Diff {
		highlight DiffAdd term=reverse cterm=bold ctermbg=black ctermfg=green
		highlight DiffChange term=reverse cterm=bold ctermbg=black ctermfg=cyan
		highlight DiffText term=reverse cterm=bold ctermbg=black ctermfg=yellow
		highlight DiffDelete term=reverse cterm=bold ctermbg=black ctermfg=red
	" }
" }
