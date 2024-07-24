## Cursor Movement
* **k/l/j/h** in normal mode, just like vim
* **Ctrl** + **k/l/j/h** move forward/backward in insert mode
* **Ctrl** + **p/n/b/f/a/e/d** in insert mode, just like emacs
* **0/$** - jump to the start/end of the current line
* **gg/G** - go to the first/last line of the document
* **gj/gk** - move cursor down/up (multi-line text)
* **Ctrl** + **d** - move cursor and screen **down** 1/2 page
* **Ctrl** + **u** - move cursor and screen **up** 1/2 page
* **Ctrl** + **n** - move cursor down 5 lines
* **Ctrl** + **p** - move cursor up 5 lines
* **Ctrl** + **f**- move cursor forwards by a word
* **Ctrl** + **b**- move cursor backwards by a word

## Edit, Search & Replace
* **Ctrl** + **/** - undo
* **Ctrl** + **r** - redo
* **Ctrl** + **w** - delete word in insert mode
* **SPC s-s** search string in buffer
* **SPC s-S** search string at cursor in buffer
* **SPC s-p** search string in project
* **SPC g-r**  - revert modification at cursor using git
* **#** - search the token at cursor **up** in the buffer
* <b>*</b> - search the token at cursor **down** in the buffer
* **Ctrl** + **c** -**Ctrl** + **c/u**  comment / uncomment code
* **Ctrl** + **x** -**SPC/r**  select / replace a rectangle
* **:%s/old/new/g** - replace all old with new throughout file
* **:%s/old/new/gc** - replace all old with new throughout file with confirmation

## Navigation
* **+** goto the usages of a function
* **-** goto the definition of a function
* **C-o** goto the older position in jump list
* **C-x h/l** switch prev/next workspace buffer
* **SPC b-k** kill the current buffer
* **SPC ,** list and switch workspace buffer
* **SPC .** find a file in the current **directory**
* **SPC SPC** find a file in the current **project**
* **:number** got line **number**
* **SPC t-l** show/hide line numbers
* **SPC t-i** show/hide indent guides
* **SPC t-f** enable/disable flycheck mode
* **SPC o-p/P** open treemacs
* **SPC Tab-]** switch workspace
* **SPC x** open scratch buffer
* **SPC q-s/l** save and restore session
* **SPC w--/+** decrease/increase window height
* **SPC w-</=/>** decrease/balance/increase window width
