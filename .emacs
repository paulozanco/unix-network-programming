(require 'package)
(package-initialize)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)
(require 'yasnippet)
(yas-global-mode 1)
(defun my:ac-c-header-init ()
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers)
  (add-to-list 'achead:include-directories '
  "/usr/lib/gcc/x86_64-linux-gnu/7/include"
  "/usr/include/x86_64-linux-gnu/c++/7"  
  )   ;gcc -xc++ -E -v -
  )
(add-hook 'c++-mode-hook 'my:ac-c-header-init)
(add-hook 'c-mode-hook 'my:ac-c-header-init)
(define-key global-map (kbd "C-c ;") 'iedit-mode)
(defun my:flymake-google-init ()
  (require 'flymake-google-cpplint)
  (custom-set-variables
   '(flymake-google-cpplint-command "/usr/local/bin/cpplint"))
  (flymake-google-cpplint-load)
  )
(add-hook 'c-mode-hook 'my:flymake-google-init)
(add-hook 'c++-mode-hook 'my:flymake-google-init)
(require 'google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)
(semantic-mode 1)
(defun my:add-semantic-to-autocomplete()
  (add-to-list 'ac-sources 'ac-source-semantic)
  )
(add-hook 'c-mode-common-hook 'my:add-semantic-to-autocomplete)
(global-ede-mode 1)
(ede-cpp-root-project "slack project" :file "~/slack-client/main.c"
		      :include-path '("~/slack-client/include"))
(global-semantic-idle-scheduler-mode 1)
(defun my:c-mode-common-hook ()
  (linum-mode 1)
  )
(add-hook 'c-mode-common-hook 'my:c-mode-common-hook)

(require 'meghanada)
(add-hook 'java-mode-hook
          (lambda ()
            ;; meghanada-mode on
            (meghanada-mode t)
            (flycheck-mode +1)
            (setq c-basic-offset 2)
            ;; use code format
            (add-hook 'before-save-hook 'meghanada-code-beautify-before-save)))

(setq meghanada-java-path "/usr/bin/java")
(setq meghanada-maven-path "/usr/bin/mvn")
