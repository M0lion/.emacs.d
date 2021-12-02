;; Turn off beep
(setq visible-bell t)

;; Loads module if file exists in config directory
(defun try-load (module)
  (let ((file (expand-file-name (concat (symbol-name module) "-module.el") user-emacs-directory)))
    (when (file-exists-p file)
      (load file))))

;; Check for proxy settings
(try-load 'proxy)

;; Set package repos
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

;; Setup use-package
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))
(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(setq use-package-always-ensure t)

;; Set file for auto generated customise stuff
(setq custom-file "~/.emacs.d/custom.el")
(unless (file-exists-p custom-file)
  (write-region "" nil custom-file))

;; Load Custom stuff
(setq custom-file "~/.emacs.d/custom.el")
(unless (file-exists-p custom-file)
  (write-region "" nil custom-file))
(load custom-file)

;; Load theme
(let ((theme 'an-old-hope)
      (url "https://raw.githubusercontent.com/mohkale/an-old-hope-emacs/master/an-old-hope-theme.el")
      (file "~/.emacs.d/an-old-hope-theme.el"))
  (unless (file-exists-p file)
    (url-copy-file url file))
  (load-theme theme))


;; Use Helm
(use-package helm)
