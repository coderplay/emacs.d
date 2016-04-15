;; Setting up configurations when you load rust-mode

;; (require 'rust-mode)
;; (require 'company)
;; (require 'helm-gtags)


;; Load rust-mode when you open `.rs` files
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))

;; Set path to racer binary
(setq racer-cmd "/Users/mzhou/.cargo/bin/racer")

;; Set path to rust src directory
(setq racer-rust-src-path "/Users/mzhou/code/rust/src")

(remove-hook 'rust-mode-hook nil)

(add-hook 'rust-mode-hook

          '(lambda ()
             ;; Enable racer
             (racer-activate)

             ;; Hook in racer with eldoc to provide documentation
             (racer-turn-on-eldoc)

             (helm-gtags-mode 1)

             ;; Use flycheck-rust in rust-mode
             (add-hook 'flycheck-mode-hook #'flycheck-rust-setup)

             ;; Use company-racer in rust mode
             (set (make-local-variable 'company-backends) '(company-racer, company-gtags))

             ;; Key binding to jump to method definition
             ;; (local-set-key (kbd "M-.") #'racer-find-definition)

             ;; Key binding to auto complete and indent
             ;; (local-set-key (kbd "TAB") #'racer-complete-or-indent)
             ))

;;; (add-hook 'rust-mode-hook #'helm-gtags-mode)
;; (add-hook 'rust-mode-hook #'racer-mode)
;; (add-hook 'racer-mode-hook #'eldoc-mode)
;; (add-hook 'racer-mode-hook #'company-mode)

(provide 'init-rust)
