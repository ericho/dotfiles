;;;; .emacs file 
; Erich Cordoba
; erich.cordoba@yandex.com
; 7/Nov/2013


;;; uncomment this line to disable loading of "default.el" at startup
;; (setq inhibit-default-init t)

;; enable visual feedback on selections
;(setq transient-mark-mode t)

;; default to better frame titles
(setq frame-title-format
      (concat  "%b - emacs@" (system-name)))

;; default to unified diffs
(setq diff-switches "-u")

;; always end a file with a newline
;(setq require-final-newline 'query)

;;; uncomment for CJK utf-8 support for non-Asian users
;; (require 'un-define)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "unknown" :family "DejaVu Sans Mono")))))


;(add-to-list 'load-path "~/.emacs.d")

; color themes
;(require 'color-theme)
;(color-theme-initialize)
;(color-theme-kingsajz)

; nyan-mode
(require 'nyan-mode)

; cscope 
(require 'xcscope)

;(menu-bar-mode 0)
(setq make-backup-file nil)
(transient-mark-mode 0)
(nyan-mode t)

;; (load-file "/usr/share/emacs/site-lisp/emacs-for-python/epy-init.el")
;; (epy-setup-checker "pyflakes %f")

