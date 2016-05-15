;; Load myinit.el after all packages has been loaded.
(add-hook 'after-init-hook (lambda () (load "~/.emacs.d/myinit.el")))
