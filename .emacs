;------------------------  Customize Emacs For C/C++ IDE  --------------------------
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; Genral Editor
(setq-default indent-tabs-mode nil)  ;; Use only spaces and no tabs
(setq default-tab-width 4)           ;; "Tab" width is always 4 spaces
(setq-default fci-rule-column 80)    ;; Show column ruler at 80 columns
(show-paren-mode 1)                  ;; Always attempt to show matching parentheses
(global-hl-line-mode)                ;; Always highlight the current line
(aggressive-indent-global-mode)      ;; Enable aggressive indent mode everywhere
(setq inhibit-startup-message t)
(setq ecb-show-tip-of-the-day nil)


(defun my-c-mode-common-hook ()
  ;; C/C++ Config
  (semantic-mode 1)            ;; CEDET holdover
  (global-ede-mode 1)          ;; CEDET holdover
  (setq c-default-style "linux")
  (fci-mode 1)
  (company-mode 1)
  (flycheck-mode 1)
  (flycheck-color-mode-line-mode 1)
  (linum-mode 1)
  (ecb-minor-mode 1)
  ;; (Conditional) C/C++ Keybinds
  (global-set-key (kbd "<C-tab>") 'company-complete)
  ;; Note: I've created layout "mylay" Using ecb-create-new-layout 
  ;; ECB Customize 
;;; activate and deactivate ecb
  (global-set-key (kbd "C-x C-;") 'ecb-activate)
  (global-set-key (kbd "C-x C-'") 'ecb-deactivate)
;;; show/hide ecb window
  (global-set-key (kbd "C-;") 'ecb-show-ecb-windows)
  (global-set-key (kbd "C-'") 'ecb-hide-ecb-windows)
;;; quick navigation between ecb windows
  (global-set-key (kbd "C-@") 'ecb-goto-window-edit1)
  (global-set-key (kbd "C-!") 'ecb-goto-window-speedbar)
  (global-set-key (kbd "C-#") 'ecb-goto-window-methods)
  (global-set-key (kbd "C-$") 'ecb-goto-window-compilation)

  )
(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.

 ;; ECB Layout Window Size 
 '(ecb-compile-window-height 0.25)
 '(ecb-compile-window-temporally-enlarge (quote after-selection))
 '(ecb-compile-window-width (quote edit-window))
 '(ecb-enlarged-compilation-window-max-height (quote best))
 '(ecb-layout-name "mylay")
 '(ecb-layout-window-sizes nil)
 '(ecb-options-version "2.50")
 '(ecb-tip-of-the-day nil)
 
 (custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
  )

