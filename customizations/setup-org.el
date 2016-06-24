;; The following lines are always needed.  Choose your own keys.
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(add-hook 'org-mode-hook 'turn-on-font-lock) ; not needed when global-font-lock-mode is on
(setq org-default-notes-file "~/Dropbox/org-life/notes.org")
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(setq org-indent-mode t)
(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/Documents/org-life/projects.org" "Quick Tasks")
         "* TODO %?\n  %i\n  %a")
        ("d" "Debug journal" entry (file+datetree "~/Documents/org-life/debug-journal.org")
         "* %?\nEntered on %U\n  %i\n  %a")
        ("n" "Note" entry (file "~/Documents/org-life/notes.org")
         "* %?")))
(setq org-startup-indented t)
(setq org-agenda-files (list "~/Documents/org-life/projects.org"))
