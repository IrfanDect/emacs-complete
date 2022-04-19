;; Standard el-get setup
;; (See also: https://github.com/dimitri/el-get#basic-setup)
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(el-get 'sync)


;; Standard Jedi.el setting
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)
;; xType:
;;     M-x el-get-install RET jedi RET
;;     M-x jedi:install-server RET
;; Then open Python file.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#ffffff" "#ffffff" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(custom-enabled-themes '(airline-base16_synth_midnight_dark))
 '(custom-safe-themes
   '("167393e1c5835a3ebac4f8cdb4c15828764200d79e538011ebd640a58ca8324e" "cb49de022f924fee5bee2425a874009b99ce8d7ee76f84227446d037fb4298d3" "d425e2488aee5a2f71abc4a49b1854423dd62575a3529f28aed55eb32190992c" "a5f66e294b8a0973d4ab94c8f8e1b0013b283cfd42f66092fb9af6d758fad364" "9635554c44541b94c009835d43bab46c760a883d4b4ef10c9e49323c62d47d47" "8d5f22f7dfd3b2e4fc2f2da46ee71065a9474d0ac726b98f647bc3c7e39f2819" "98e35e087dccfdab62c3b5d3345bea78d892db3fd5a97b10c7caab59657fc342" "0e55884b39a023ac216d125b20457d941288de3fcb1358938c37a93b2c394d4d" "2b8dff32b9018d88e24044eb60d8f3829bd6bbeab754e70799b78593af1c3aba" "c2ab4319b67c198f8732ecf62357f376200c120d4946b8ea26ca5ec1334ec0f0" "b181ea0cc32303da7f9227361bb051bbb6c3105bb4f386ca22a06db319b08882" "8672c645e375c0f89575992c230f3f5ab5854b433c238ed871b59a88c8f1c602" "f0f981a23e38a98f78ab432bad1dd832569b2c9566e6a6f0ef872923c6228383" "95ebf5b5e0e65d2985bd6243a4747a11b8c271a6d632b4c83aadfe69c38ecfaa" "7de0917b4064219c0580397495d47b89a5f93d76724504d0ea8d2eea83542167" "bdb0a37a078bc030ed685e0700b987d296d3473cfe5256c01577a65c67c6c330" "1bdc49116a77e52aaea740cd8e54b93e0bae6c0895dcc36d5c8d1a493e89c78d" "81eedac030249f826681ab768953f5b0f671d4b069bd6c9c486f762644b24d7c" "fbd91b2e6dc5c7912e86406226638adb014612386516e078a0447195591447d3" "84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "2b474647799a29add7e3cf34cd9f8178e872f6a4f354f58f4e717d93a53a4eed" "bb360a9e97f389cfbf5ffd89636b5009e17cb4fd713015526c09dc3c6671c6d7" "d10079da40610df976108c89993a0894b44121b12218effe65b72a5479ac6bb2" "729215180f26504a9b0c238d0fdd0e2f9dcae2a86b7e53b3af3604e54ea36cbc" default))
 '(display-battery-mode nil)
 '(global-display-line-numbers-mode t)
 '(indent-guide-mode t t)
 '(midnight-mode t)
 '(package-selected-packages '(## queue))
 '(powerline-center-evil-theme t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;; Standard package.el + MELPA setup
;; (See also: https://github.com/milkypostman/melpa#usage)
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)


;; Standard Jedi.el setting
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

;; Type:
;;     M-x package-install RET jedi RET
;;     M-x jedi:install-server RET
;; Then open Python file.
