" Vim compiler file
" Compiler:	vitest
" Maintainer:	Artem Vozhdayenko <a.vozhdaenko@gmail.com>

if exists("current_compiler")
  finish
endif
let current_compiler = "vitest"

if exists(":CompilerSet") != 2
  command -nargs=* CompilerSet setlocal <args>
endif

let s:cpo_save = &cpo
set cpo&vim

CompilerSet makeprg=node_modules/.bin/vitest\ %

CompilerSet errorformat=
	\%E\ FAIL\ %.%#,
	\%-Z%*\\s%.\ %f:%l:%c%.%#,
	\%-G\ \ \ \ \ %\\d%#%.%#,
	\%+C%.%#,
	\%-G%.%#,


let &cpo = s:cpo_save
unlet s:cpo_save
