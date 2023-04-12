" Vim syntax file
" Language: todo
" Maintainer: Jeanne
" Latest Revision: 12 Apr 2023

if exists("b:current_syntax")
  finish
endif

"Highlights
syn keyword todoTodo TODO FIXME XXX NOTE ENH NB WTF ???

"Todo Elements
syn match   todoElemDone        '^\s*\[x\]'
syn match   todoElemImportant   '^\s*\[!\]'
syn match   todoElem            '^\s*\[ \]'
syn match   todoElemToCheck     '^\s*\[?\]'
syn match   todoElemMarked      '^\s*\[-\]'


"tests
syn match   todoTopList         '^.*:$' contains=TodoElemDone,TodoElemImportant,TodoElemToCheck,TodoElemMarked
syn match   todoElemB      '^\s*\[B\]'
syn match   todoElemC      '^\s*\[C\]'
syn match   todoElemD      '^\s*\[D\]'
syn match   todoElemE      '^\s*\[E\]'

" Comments
syn match   todoComment         '^\s*[*].*$'


hi def link todoTodo            Todo
hi def link todoElemMarked      String
hi def link todoElemImportant   PreProc
hi def link todoElemDone        Keyword
hi def link todoElemToCheck     Type
hi def link todoTopList         Underlined
hi def link todoComment         Comment

let b:current_syntax = "todo"
