;; init-epub.el -- Configuration for ePub

;; Read ePub files
(use-package nov
  :ensure t
  :init
  (add-to-list 'auto-mode-alist '("\\.epub\\'" . nov-mode)))

(provide 'init-epub)
;; init-epub.el ends here
