;;; test.el --- leftpad test

;; Copyright (C) 2016 by Yen-Chin, Lee

;; Author: Yen-Chin, Lee <coldnew.tw@gmail.com>

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;;; Code:

(require 'ert)
(require 'leftpad)

(ert-deftest test-leftpad ()
  (should (string= "  foo" (leftpad "foo" 5)))
  (should (string= "foobar" (leftpad "foobar" 6)))
  (should (string= "01" (leftpad 1 2 0)))
  (should (string= "-1" (leftpad 1 2 "-"))))

;;; test.el ends here
