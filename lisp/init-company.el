;;  company mode configuration
(require 'company)

;; Enable company globally for all mode
(add-hook 'after-init-hook 'global-company-mode)

;; Reduce the time after which the company auto completion popup opens
(setq company-idle-delay 0.2)

;; Reduce the number of characters before company kicks in
(setq company-minimum-prefix-length 1)

(setq company-backends (delete 'company-semantic company-backends))
;; (define-key c-mode-map  [(tab)] 'company-complete)
;; (define-key c++-mode-map  [(tab)] 'company-complete)

;; (setq company-tooltip-align-annotations t)

(provide 'init-company)
