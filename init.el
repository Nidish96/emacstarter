;; This tangles the "config.org" file into "config.el" (if not already) and loads it
(require 'org)
(org-babel-load-file
 (expand-file-name "config.org" user-emacs-directory))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(dired-listing-switches "-alXGh --group-directories-first")
 '(native-comp-async-report-warnings-errors 'silent)
 '(org-agenda-files nil)
 '(package-selected-packages
   '(highlight-indentation indent-guide winum csv-mode org-tree-slide multiple-cursors realgud yasnippet-capf yasnippet-snippets escalator org-roam dired-subtree ov org-bullets org-special-block-extras lsp-ui counsel-projectile projectile company-box python-mode matlab-mode cart quelpa-use-package pdf-tools magit iedit helm-swoop helm-ls-git crdt company-quickhelp company-auctex auctex-latexmk))
 '(pixel-scroll-precision-mode t)
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
