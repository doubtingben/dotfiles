
(add-to-list 'load-path "~/.emacs.d/modes/")

(menu-bar-mode -1)
(show-paren-mode 1)
(setq scroll-step 1) ;; keyboard scroll one line at a time

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("fe230d2861a13bb969b5cdf45df1396385250cc0b7933b8ab9a2f9339b455f5c" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load-theme 'monokai t)

(require 'package)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/repos/neotree")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(setq neo-smart-open t)

(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

(add-hook 'python-mode-hook
  (function (lambda ()
    (setq indent-tabs-mode nil
          tab-width 4))))

(custom-set-variables
 '(python-guess-indent nil)
  '(python-indent 4))

(defun xterm-title-update ()
  (interactive)
  (send-string-to-terminal (concat "\033]1; " (buffer-name) "\007"))
  (if buffer-file-name
      (send-string-to-terminal (concat "\033]2; " (buffer-file-name) "\007"))
    (send-string-to-terminal (concat "\033]2; " (buffer-name) "\007"))))

  (add-hook 'post-command-hook 'xterm-title-update)

(setq
 backup-by-copying t      ; don't clobber symlinks
 backup-directory-alist
 '(("." . "~/.saves"))    ; don't litter my fs tree
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2
    version-control t)       ; use versioned backups

(load "~/.emacs.d/init/golang.el")
