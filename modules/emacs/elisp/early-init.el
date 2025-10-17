;; early-init.el -*- lexical-binding: t -*-

(setq frame-resize-pixelwise t
	frame-inhibit-implied-resize t
	frame-title-format '("%b")
	ring-bell-function 'ignore
	use-dialog-box nil
	use-file-dialog nil
	use-short-answers t
	inhibit-splash-screen t
	inhibit-startup-screen t
	inhibit-startup-echo-area-message user-login-name
	inhibit-startup-buffer-menu t)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(setq make-backup-files nil)
(setq auto-save-default nil)
(setq auto-save-list-file-prefix nil)
(setq create-lockfiles nil)

(setq gc-cons-threshold (* 10 128 1024 1024))
(setq garbage-collection-messages nil)

(setq read-process-output-max (* 8 1024 1024))

(setq ring-bell-function 'ignore)

(setq default-directory "~/")
(setq command-line-default-directory "~/")

(setq initial-scratch-message nil)
(setq initial-major-mode 'fundamental-mode)

(advice-add 'x-apply-session-resources :override 'ignore)

(setq inhibit-compacting-font-caches t)

(setq history-delete-duplicates t)

(setq vc-follow-symlinks t)

(setq byte-compile-warnings '(cl-functions))

(with-eval-after-load 'package
  (setopt package-enable-at-startup nil))
