;;; leftpad.el --- string left pad

;; Copyright (c) 2016 Yen-Chin, Lee.
;;
;; Author: coldnew <coldnew.tw@gmail.com>
;; Keywords: strings
;; X-URL: http://github.com/coldnew/leftpad.el
;; Version: 0.1

;; This file is not part of GNU Emacs.

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program; if not, write to the Free Software
;; Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

;;; Commentary:

;; This is emacs-lisp version of [left-pad](https://github.com/azer/left-pad), all test compatible with it.

;;; Install
;;
;; This package SHOULD-NOT add to [melpa](http://melpa.org/), you need to install it manually.

;;; Usage:
;;
;; ```elisp
;; (require 'leftpad)
;;
;; (leftpad "foo" 5)
;; ;; => "  foo"
;;
;; (leftpad "foobar" 6)
;; ;; => "foobar"
;;
;; (leftpad 1 2 0)
;; ;; => "01"
;; ```

;;; Code:

(defun leftpad (s len &optional ch)
  "If S is shorter than LEN, pad it with CH on the left."
  (let ((pad (string-to-char (format "%s" (or ch " "))))
	(width (max 0 (- len (cond ((stringp s) (length s))
				   (t 1))))))
    (format "%s%s" (make-string width pad) s)))

(provide 'leftpad)
;;; leftpad.el ends here