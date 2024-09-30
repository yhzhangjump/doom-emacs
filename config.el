;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
;; (setq user-full-name "John Doe"
;;       user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-symbol-font' -- for symbols
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

;; New key bindings
(defun +private/treemacs-back-and-forth ()
  (interactive)
  (if (treemacs-is-treemacs-window-selected?)
      (ace-swap-window)
    (treemacs-select-window)))

(defun jump-multiple-lines-forward ()
  (interactive)
  (forward-line 5))

(defun jump-multiple-lines-backward ()
  (interactive)
  (forward-line -5))

(defun dark-theme ()
  (interactive)
  (load-theme 'doom-one t))

(defun light-theme ()
  (interactive)
  (load-theme 'modus-operandi t))
  ;;(load-theme 'doom-feather-light t))

;; See https://www.color-hex.com/color-names.html
;; Green-ish
(setq DarkOliveGreen  "#6E8B3D")
(setq ForestGreen     "#228B22")
(setq SpringGreen     "#008B45")
;; Blue-ish
(setq AbsoluteZero    "#0048BA")
(setq CadetBlue4      "#53868B")
(setq DarkCyan        "#008B8B")
;; Red-ish
(setq Amaranth        "#E52B50")
(setq Bittersweet     "#BF4F51")
(setq Cerise          "#DE3163")

(setq InsertModeColor Bittersweet)
(setq NormalModeColor AbsoluteZero)

(defun edit-state-entry-highlight()
  (interactive)
  (set-face-background 'hl-line InsertModeColor))

(defun edit-state-exit-highlight()
  (interactive)
  (set-face-background 'hl-line NormalModeColor)
  (forward-char)) ;; Fixing a weird issue which backward-char when exiting the insert mode

(defun escape-after-switching-window()
  (interactive)
  (evil-escape))

(defun no-highlight-after-switching-window()
  (interactive)
  (set-face-background 'hl-line NormalModeColor))

;; Navigation
(map! :n "C-f" #'forward-word)
(map! :n "C-b" #'backward-word)
(map! :n "C-e" #'end-of-line)
(map! :n "C-a" #'beginning-of-line)
(map! :n "C-x j" #'scroll-up-line)
(map! :n "C-x k" #'scroll-down-line)
(map! :n "C-n" #'jump-multiple-lines-forward)
(map! :n "C-p" #'jump-multiple-lines-backward)
(map! :n "C-x l" #'next-buffer)
(map! :n "C-x h" #'previous-buffer)
(map! :n "-" #'lsp-find-definition)
(map! :n "+" #'lsp-find-references)
(map! :n "C-x r" #'replace-rectangle)
(map! :n "C-c C-u" #'uncomment-region)
(map! :n "M--" #'+private/treemacs-back-and-forth)

;; Navigation in insert mode
(evil-define-key 'insert global-map (kbd "C-f") 'forward-char)
(evil-define-key 'insert global-map (kbd "C-b") 'backward-char)
(evil-define-key 'insert global-map (kbd "C-n") 'evil-next-line)
(evil-define-key 'insert global-map (kbd "C-p") 'evil-previous-line)
(evil-define-key 'insert global-map (kbd "C-l") 'forward-word)
(evil-define-key 'insert global-map (kbd "C-h") 'backward-word)
(evil-define-key 'insert global-map (kbd "C-k") 'forward-char)
(evil-define-key 'insert global-map (kbd "C-j") 'backward-char)
(evil-define-key 'insert global-map (kbd "C-d") 'evil-delete-char)

;; New styles
;; show current function in c-mode
(add-hook 'c-mode-hook '(lambda () (which-function-mode t)))
;; highlight current line
(require 'hl-line)
(setq hl-line-sticky-flag nil)
(set-face-background 'hl-line NormalModeColor)
;; change highlight color in insert mode
(add-hook 'evil-insert-state-entry-hook #'edit-state-entry-highlight)
(add-hook 'evil-insert-state-exit-hook #'edit-state-exit-highlight)
(add-hook 'doom-switch-window-hook #'escape-after-switching-window)
(add-hook 'doom-switch-window-hook #'no-highlight-after-switching-window)

;; GUI settings
(setq x-ctrl-keysym 'meta)
(setq x-meta-keysym 'ctrl)
(set-face-attribute 'default nil :height 150)

;; Projects
(add-hook 'rust-mode-hook 'lsp-deferred)
(projectile-discover-projects-in-directory "~/repos/agave" 1)
(projectile-discover-projects-in-directory "~/repos/firedancer" 1)

