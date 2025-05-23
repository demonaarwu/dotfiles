;; init-evil.el -- Configuration for Evil

(use-package evil
  :ensure t
  :init
  (evil-mode 1)
  (evil-set-initial-state 'vterm-mode 'emacs)
  (evil-set-initial-state 'eaf-mode 'emacs))

(use-package evil-escape
  :ensure t
  :init
  (evil-escape-mode 1)
  (setq-default evil-escape-key-sequence "kj")
  (setq-default evil-escape-delay 0.2)
  )

(use-package evil-nerd-commenter
  :ensure t
  )

(use-package general
  :ensure t
  :init
  (general-create-definer aaw-leader-def
	:prefix "SPC")
  (aaw-leader-def
    :keymaps 'normal
    "ff" 'counsel-find-file
    "fp" 'find-file-in-project
    "tt" 'open-vterm
    "sb" 'counsel-switch-buffer
    "rg" 'counsel-rg
    "ss" 'swiper
    "oa" 'org-agenda
    "ot" 'org-todo
    "oc" 'org-capture
    "oj" 'org-metaup
    "od" 'org-journal-new-entry
    "ok" 'org-priority-down
    "0" 'winum-select-window-0
    "1" 'winum-select-window-1
    "2" 'winum-select-window-2
    "3" 'winum-select-window-3
    "4" 'winum-select-window-4
    "5" 'winum-select-window-5
    "6" 'winum-select-window-6
    "7" 'winum-select-window-7
    "/" 'evilnc-comment-or-uncomment-lines
    )
  )

(provide 'init-evil)
;; init-evil.el ends here
