" trivial-text-objects.vim
" These text objects are completely trivial, but still useful.
" Author: Jo Totland
" Version: 1.0

if exists("g:loaded_trivial_text_objects")
    finish
endif
let g:loaded_trivial_text_objects = 1

if !exists("g:trivial_text_objects_no_default_maps")
    omap il <plug>(inside-line)
    vmap il <plug>(inside-line)
    omap al <plug>(around-line)
    vmap al <plug>(around-line)

    omap i% <plug>(entire-buffer)
    vmap i% <plug>(entire-buffer)
    omap a% <plug>(entire-buffer)
    vmap a% <plug>(entire-buffer)
endif

onoremap <silent> <plug>(inside-line) :<c-u>call <sid>insideLine(v:count)<cr>
vnoremap <silent> <plug>(inside-line) :<c-u>call <sid>insideLine(v:count)<cr>
onoremap <silent> <plug>(around-line) :<c-u>call <sid>aroundLine(v:count)<cr>
vnoremap <silent> <plug>(around-line) :<c-u>call <sid>aroundLine(v:count)<cr>
onoremap <silent> <plug>(entire-buffer) :<c-u>call <sid>entireBuffer()<cr>
vnoremap <silent> <plug>(entire-buffer) :<c-u>call <sid>entireBuffer()<cr>

function! s:insideLine(count)
    echo a:count
    let down = ''
    if a:count =~# '\d\+' && a:count ># 1
        let down = (a:count - 1) . 'j'
    endif
    execute 'normal! ^v' . down . 'g_'
endfunction

function! s:aroundLine(count)
    echo a:count
    let down = ''
    if a:count =~# '\d\+' && a:count ># 1
        let down = (a:count - 1) . 'j'
    endif
    execute 'normal! 0v' . down . '$'
endfunction

function! s:entireBuffer()
    normal! G
    keepjumps normal! Vgg
endfunction

