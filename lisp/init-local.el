;; Tramp settings
(setq tramp-default-method "ssh"
      tramp-default-user "ubuntu"
      explicit-shell-file-name "/bin/bash"
      tramp-auto-save-directory "~/.tmp/tramp"
      tramp-chunksize 512)


(setq magit-last-seen-setup-instructions "1.4.0")


(load-theme 'wombat t)

;; (add-to-list 'load-path "~/.emacs.d/jdee-2.4.1/lisp")
;; (load "jde")


;; (global-set-key (kbd "TAB") #'company-indent-or-complete-common) ;
;; (setq company-tooltip-align-annotations t)


(provide 'init-local)
