
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

(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))

