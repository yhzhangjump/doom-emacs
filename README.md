## Cursor Movement
* **k/j/h/l** just like vim
* **Ctrl** + **p/n/b/f/a/e** in insert mode, just like emacs
* **gj** - move cursor down (multi-line text)
* **gk** - move cursor up (multi-line text)
* **0** - jump to the start of the line
* **$** - jump to the end of the line
* **gg** - go to the first line of the document
* **G** - go to the last line of the document
* **Ctrl** + **d** - move cursor and screen **down** 1/2 page
* **Ctrl** + **u** - move cursor and screen **up** 1/2 page
* **Ctrl** + **n** - move cursor down 5 lines
* **Ctrl** + **p** - move cursor up 5 lines
* **Ctrl** + **f**- or **e** - move cursor forwards by a word
* **Ctrl** + **b**- or **b** - move cursor backwards by a word

## Edit, Search & Replace
* **Ctrl** + **/** - undo
* **Ctrl** + **r** - redo
* **Ctrl** + **w** - delete word
* **SPC s-s** search string in buffer
* **SPC s-p** search string in project
* **#** - search the token at cursor **up** in the buffer
* <b>*</b> - search the token at cursor **down** in the buffer
* **:%s/old/new/g** - replace all old with new throughout file
* **:%s/old/new/gc** - replace all old with new throughout file with confirmation

## Navigation
* **Ctrl**  + **y/e** - scroll up/down
* **SPC b-k** kill the current buffer
* **SPC ,** list and switch workspace buffer
* **C-x h/l** switch prev/next workspace buffer
* **SPC SPC** find a file in the current **project**
* **SPC .** find a file in the current **directory**
* **:number** got line **number**
* **SPC t-l** show/hide line numbers
* **SPC t-i** show/hide indent guides
* **SPC t-f** enable/disable flycheck mode
* **SPC o-p/P** open treemacs
* **SPC Tab-]** switch workspace
* **SPC q-q** quit emacs
* **SPC x** open scratch buffer
* **SPC q-s/l** save and restore session
* **SPC w--/+** decrease/increase window height
* **SPC w-</=/>** decrease/balance/increase window width
