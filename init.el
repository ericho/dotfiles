;;
;;

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(require 'package)

(setq package-archives
      '(("org"     .       "https://orgmode.org/elpa/")
        ("gnu"     .       "https://elpa.gnu.org/packages/")
        ("melpa"   .       "https://melpa.org/packages/")))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(require 'use-package)

(setq use-package-always-ensure t)
(setq mouse-drag-copy-region t)
(windmove-default-keybindings)
(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)
(setq show-paren-delay  0)
(setq show-paren-style 'mixed)
(setq c-default-style "linux"
      c-basic-offset 4)
(show-paren-mode)


(use-package which-key
  :diminish
  :disabled
  :config
  (which-key-mode nil)
  (which-key-setup-side-window-bottom)
  (setq which-key-idle-delay 0.1))

(use-package magit
  :config
  (global-set-key (kbd "C-x g") 'magit-status))


(use-package nyan-mode
  :config
  (nyan-mode 1))

(use-package helm
 :diminish
 :init (helm-mode t)
 :bind (("M-x"     . helm-M-x)
        ("C-x C-f" . helm-find-files)
        ("C-x b"   . helm-mini)     ;; See buffers & recent files; more useful.
        ("C-x r b" . helm-filtered-bookmarks)
        ("C-x C-r" . helm-recentf)  ;; Search for recently edited files
        ("C-c i"   . helm-imenu)
        ("C-h a"   . helm-apropos)
        ;; Look at what was cut recently & paste it in.
        ("M-y" . helm-show-kill-ring)

        :map helm-map
        ;; We can list ‘actions’ on the currently selected item by C-z.
        ("C-z" . helm-select-action)
        ;; Let's keep tab-completetion anyhow.
        ("TAB"   . helm-execute-persistent-action)
        ("<tab>" . helm-execute-persistent-action)))

(use-package rg
  :config
  (global-set-key (kbd "M-s g") 'rg)
  (global-set-key (kbd "M-s d") 'rg-dwim))

(use-package doom-themes)

(use-package helm-rg)

(use-package flycheck)

(use-package rustic)

(use-package lsp-ui)

(use-package helm-lsp
  :config
  (define-key lsp-mode-map [remap xref-find-apropos] #'helm-lsp-workspace-symbol))

(use-package org-bullets
  :hook (org-mode . org-bullets-mode))

(use-package rainbow-delimiters
  :disabled
  :hook ((org-mode prog-mode text-mode) . rainbow-delimiters-mode))

(use-package pdf-tools
  :defer t
  :custom (pdf-tools-handle-upgrades nil)
  (pdf-info-epdfinfo-program "/usr/local/bin/epdfinfo")
  :config (pdf-tools-install))

(use-package yasnippet)

(use-package python
  :mode ("\\.py\\'" . python-mode)
  :interpreter ("python" . python-mode))

(use-package helm-cscope)

(use-package elpy
  :ensure t
  :init
  (elpy-enable))
(setq gud-pdb-command-name "python -m pdb")

(use-package all-the-icons)

(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook))

(setq dashboard-set-heading-icons t)
(setq dashboard-set-file-icons t)
;; Font settings
(add-to-list 'default-frame-alist '(font . "Hack-11"))
(set-face-attribute 'default t :font "Hack-11")
(load-theme 'doom-material t)

