trivial-text-objects.vim
---
Absolutely trivial but still useful text objects.

Author: Jo Totland\
Version: 1.0

Introduction
---

This plugin defines three text objects with mappings for the non-blank part of
the current line, the whole line, and the whole buffer

Plug-Mappings
---

There following text object plug mappings are defined for operator-pending
mode and visual mode.
    
    <plug>(inside-line)

<plug>(inside-line) selects the part of the line from first nonblank
character, to and including the last nonblank character.

It also accepts a count. When a count greater than 1 is given, it will select
count lines, starting from current line.

    <plug>(around-line)

<plug>(around-line) selects the whole line, including end of line character.

It also accepts a count. When a count greater than 1 is given, it will select
count lines, starting from current line.

    <plug>(entire-buffer)

<plug>(entire-buffer) selects the entire buffer.

Default Mappings
---

In addition to the plug mappings the following mappings are defined for
operator-pending mode and visual mode.

    *il*	<plug>(inside-line)
    *al*	<plug>(around-line)
    *i%*	<plug>(entire-buffer)
    *a%*	<plug>(entire-buffer)
    
Configuration
---

If you do not want the default mappings, put 
    let g:trivial_text_objects_no_default_map = 1
in you vimrc.
