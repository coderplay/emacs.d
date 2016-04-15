(require 'helm-config)
(helm-mode 1)

(global-set-key (kbd "M-x")                          'helm-M-x)
(global-set-key (kbd "M-y")                          'helm-show-kill-ring)
(global-set-key (kbd "C-x r b")                      'helm-filtered-bookmarks)
(global-set-key (kbd "C-x C-f")                      'helm-find-files)
(global-set-key (kbd "C-c o")                        'helm-occur)
(global-set-key (kbd "C-x b")                        'helm-mini)
(global-set-key (kbd "M-/")                          'helm-dabbrev)
(global-set-key (kbd "C-o")                          'helm-semantic-or-imenu)
(global-set-key (kbd "C-h SPC")                      'helm-all-mark-rings)
(global-set-key (kbd "C-c h x")                      'helm-register)


(semantic-mode 1)

(setq helm-buffers-fuzzy-matching t
      helm-recentf-fuzzy-match    t
      helm-semantic-fuzzy-match   t
      helm-imenu-fuzzy-match      t)

(eval-after-load "grep"
  '(progn
     (add-to-list 'grep-find-ignored-files "GPATH")
     (add-to-list 'grep-find-ignored-files "GTAGS")
     (add-to-list 'grep-find-ignored-directories "_darcs")))

(when (executable-find "ack")
  (setq helm-grep-default-command "ack -Hn --no-group --no-color %e %p %f"
        helm-grep-default-recurse-command "ack -H --no-group --no-color %e %p %f"))

(unless (boundp 'completion-in-region-function)
  (define-key lisp-interaction-mode-map [remap completion-at-point] 'helm-lisp-completion-at-point)
  (define-key emacs-lisp-mode-map       [remap completion-at-point] 'helm-lisp-completion-at-point))

(provide 'init-helm)
