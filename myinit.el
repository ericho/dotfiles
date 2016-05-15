;; Setup packages sources 
(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

;; Window customizations
(setq inhibit-startup-message t)
(menu-bar-mode -1)
(tool-bar-mode -1)

;; Select which theme to load based on text mode or X mode
(if window-system
    (load-theme 'cyberpunk)
  (load-theme 'tango-dark))

;; Configuring C mode

;; Set default style
(setq c-default-style "cc-mode")

;; Enable cscope
(require 'xcscope)

;; Enable HELM
(add-to-list 'load-path "~/src/helm")
(add-to-list 'load-path "~/src/async")
(require 'helm-config)
(helm-mode 1)
(define-key global-map [remap find-file] 'helm-find-files)
(define-key global-map [remap occur] 'helm-occur)
(define-key global-map [remap list-buffers] 'helm-buffers-list)
(define-key global-map [remap dabbrev-expand] 'helm-dabbrev)
(global-set-key (kbd "M-x") 'helm-M-x)
(unless (boundp 'completion-in-region-function)
  (define-key lisp-interaction-mode-map [remap completion-at-point] 'helm-lisp-completion-at-point)
  (define-key emacs-lisp-mode-map       [remap completion-at-point] 'helm-lisp-completion-at-point))
