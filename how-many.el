;;; how-many --- Count how many times the word is used in the project

;; Copyright (C) 2018- blue0513

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program; if not, write to the Free Software
;; Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA

;; Author: blue0513
;; URL: https://github.com/blue0513
;; Version: 0.0.1
;; Package-Requires: ((popup "0.5.3"))

;; Load this script
;;
;;   (require 'how-many)
;;

;;; Code:

(require 'popup)

(defun how-many()
  "Show how many times the word at point is used in the project."
  (interactive)
  (let* ((string (thing-at-point 'word)))
    (popup-tip
     (shell-command-to-string
      (concat "git grep " string " | wc -l")))))

;; * provide

(provide 'how-many)

;;; how-many.el ends here
