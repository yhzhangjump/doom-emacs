## Cursor Movement
* **k/j/h/l** just like vim
* **Ctrl** + **p/n/b/f/a/e** in insert mode, just like emacs
* **0/$** - jump to the start/end of the line (or **C-a/C-e**)
* **gg/G** - go to the first/last line of the document
* **gj/gk** - move cursor down/up (multi-line text)
* **Ctrl** + **d** - move cursor and screen **down** 1/2 page
* **Ctrl** + **u** - move cursor and screen **up** 1/2 page
* **Ctrl** + **n** - move cursor down 5 lines
* **Ctrl** + **p** - move cursor up 5 lines
* **Ctrl** + **f**- or **e** - move cursor forwards by a word (also in insert mode)
* **Ctrl** + **b**- or **b** - move cursor backwards by a word (also in insert mode)

## Edit, Search & Replace
* **Ctrl** + **/** - undo
* **Ctrl** + **r** - redo
* **Ctrl** + **w** - delete word in insert mode
* **SPC s-s** search string in buffer
* **SPC s-p** search string in project
* **SPC g-r**  - revert modification at cursor using git
* **#** - search the token at cursor **up** in the buffer
* <b>*</b> - search the token at cursor **down** in the buffer
* **Ctrl** + **x** -**SPC/r**  select / replace a rectangle
* **Ctrl** + **c** -**Ctrl** + **c/u**  comment / uncomment code
* **:%s/old/new/g** - replace all old with new throughout file
* **:%s/old/new/gc** - replace all old with new throughout file with confirmation

## Navigation
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
