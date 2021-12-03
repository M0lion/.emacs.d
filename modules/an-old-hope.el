;; Download theme from github if necessary, then load.
(let ((theme 'an-old-hope)
      (url "https://raw.githubusercontent.com/mohkale/an-old-hope-emacs/master/an-old-hope-theme.el")
      (file "~/.emacs.d/an-old-hope-theme.el"))
  (unless (file-exists-p file)
    (url-copy-file url file))
  (load-theme theme t))
