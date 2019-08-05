set encoding=utf-8 " encoding utf-8
if has('unix')
  set fileformat=unix
  set fileformats=unix,dos,mac
  set fileencoding=utf-8
  set fileencodings=utf-8,iso-2022-jp,cp932,euc-jp
  set termencoding=
elseif has('win32')
  set fileformat=dos
  set fileformats=dos,unix,mac
  set fileencoding=utf-8
  set fileencodings=iso-2022-jp,utf-8,euc-jp,cp932
  set termencoding=
endif
syntax on
filetype plugin indent on 
set number
set ts=4
