;; BASIC SETTINGS
(setq inhibit-startup-message t)
(tool-bar-mode -1)
(set-fringe-mode 10)

(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)

(set-frame-font "Consolas 13" nil t)

(global-hl-line-mode -1)

(tooltip-mode -1)
(setq visible-bell t)

(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))
      mouse-wheel-progressive-speed nil
      mouse-wheel-follow-mouse 't
      scroll-step 1)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

(set-default 'truncate-lines t)

(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

(setq backup-directory-alist `(("." . "~/saves")))

;; PACKAGES SETTINGS
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa")
                         ("elpa" . "https://elpa.gnu.org/packages/")))
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))
      
(unless (package-installed-p 'use-package)
  (package-install 'use-package))  ; Initialize use-package on non-linux platforms

(require 'use-package)
(setq use-package-always-ensure t)

;; PACKAGE > WHICH-KEY
(use-package which-key
  :ensure t
  :config (which-key-mode))

;; PACKAGE > AUTO-COMPLETE
(use-package auto-complete
  :ensure t
  :init
  (progn
    (ac-config-default)
    (global-auto-complete-mode t)))

;; PACKAGE > IVY
(use-package ivy
  :diminish
  :bind (("C-s" . swiper)
         :map ivy-minibuffer-map
         ("TAB" . ivy-alt-done)	
         ("C-l" . ivy-alt-done)
         ("C-j" . ivy-next-line)
         ("C-k" . ivy-previous-line)
         :map ivy-switch-buffer-map
         ("C-k" . ivy-previous-line)
         ("C-l" . ivy-done)
         ("C-d" . ivy-switch-buffer-kill)
         :map ivy-reverse-i-search-map
         ("C-k" . ivy-previous-line)
         ("C-d" . ivy-reverse-i-search-kill))
  :config
  (ivy-mode 1))

;; PACKAGE > MAGIT
(use-package magit
  :custom
  (magit-display-buffer-function #'magit-display-buffer-same-window-except-diff-v1))

;; PACKAGE > FLYCKECK
(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))

;; THEME
;; (load-theme 'deeper-blue)
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'zenburn)

