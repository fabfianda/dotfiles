" --- Eval via project stack the value 
" --- of the * buffer in the active .hs file
" --- Notes: 
" --- getreg returns an array
" --- file is saved before execution 
function Hev() range
 let buf=getreg('*', 1, 1)[0] 
 let file=expand("%") 
 let cstart = "r! echo '{- | Eval results for: '".buf
 let cend = "r! echo '-}'"
 let ghc = "r! stack exec -- ghc -XOverloadedStrings -XRecordWildCards % -e '".buf."'"
 execute "w" 
 execute cstart 
 execute ghc 
 execute cend 
endfunction
