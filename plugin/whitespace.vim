hi ExtraWhitespace ctermfg=161
match ExtraWhitespace /\s\+\%#\@<!$/

function! StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line('.')
    let c = col('.')

    " Work: match extra whitespace
    %s/\s\+$//e

    " Cleanup: restore previous search history and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
