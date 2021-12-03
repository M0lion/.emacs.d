(setq package-enable-at-startup nil)

;; Gets path for module
(defun get-module-path (module)
  (expand-file-name (concat "modules/" (symbol-name module) ".el") user-emacs-directory))

;; Loads module if file exists in config directory
(defun try-load (module)
  (let ((file (get-module-path module)))
    (when (file-exists-p file)
      (load file))))

;; Loads module
(defun load-module (module)
  (load (get-module-path module)))
