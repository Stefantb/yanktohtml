function! yanktohtml#YankToHtml(reg) range
    let l:reg = 'a'
    let l:savereg = getreg(l:reg)
    let l:savetype = getregtype(l:reg)
    try
        exec "silent " . a:firstline . "," . a:lastline . "yank " . l:reg
        exec "let l:contents = @" . l:reg
    finally
        call setreg(l:reg, l:savereg, l:savetype)
    endtry
    let l:html = system("pandoc --from markdown --to html", l:contents)
    let l:_ = system("xclip -selection clipboard -t text/html", l:html)
endfunction

