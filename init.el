;; Misc
(load-module 'misc)

;; Check for proxy settings
(try-load 'proxy)

;; Setup straight
(load-module 'straight-init)

;; Load custom.el stuff
(load-module 'customize)

;; Load theme
(load-module 'an-old-hope)

;; Use Helm
(use-package helm)

;; Magit
(use-package magit)
