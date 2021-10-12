;;; unipunct-ng.el --- Universal cyrillic input method   -*- lexical-binding: t; -*-

;; Copyright (C) 2019-2021  dk

;; Author: dk <dk@somnambula>
;; Keywords: languages

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;;

;;; Code:


(require 'quail)

;; Modified winkeys, punctuation is the same as english
(quail-define-package
 "russian-unipunct-ng" "Russian" "RU" nil
 "ЙБУКЕ Russian computer layout"
 nil t t t t nil nil nil nil nil t)

(quail-define-rules
 ("1" ?1) ("2" ?2) ("3" ?3) ("4" ?4) ("5" ?5) ("6" ?6) ("7" ?7) ("8" ?8) ("9" ?9) ("0" ?0) ("-" ?-) ("=" ?=)
 ("|" ?|)
 ("`" ?’)
 ("q" ?й) ("w" ?б) ("e" ?у) ("r" ?к) ("t" ?е) ("y" ?н) ("u" ?г) ("i" ?ш) ("o" ?ж) ("p" ?з) ;; ("[" ?\[) ;; ("]" ?\])
 ("a" ?х) ("s" ?ы) ("d" ?в) ("f" ?а) ("g" ?п) ("h" ?р) ("j" ?о) ("k" ?л) ("l" ?д) (";" ?\;) ("'" ?') ("\\" ?\\)
 ("z" ?я) ("x" ?ч) ("c" ?с) ("v" ?м) ("b" ?и) ("n" ?т) ("m" ?ь) ("," ?,) ("." ?.) ("/" ?/)
 ("!" ?!)
 ("@" ?@)
 ("#" ?#)
 ("$" ?$)
 ("%" ?%)
 ("^" ?^)
 ("&" ?&)
 ("*" ?*)
 ("(" ?\()
 (")" ?\))
 ("_" ?_)
 ("+" ?+)
 ("~" ?~)
 ("Q" ?Й)
 ("W" ?Б)
 ("E" ?У)
 ("R" ?К)
 ("T" ?Е)
 ("Y" ?Н)
 ("U" ?Г)
 ("I" ?Ш)
 ("O" ?Щ)
 ("P" ?З)
 ("{" ?{)
 ("}" ?})
 ("A" ?Х)
 ("S" ?Ы)
 ("D" ?В)
 ("F" ?А)
 ("G" ?П)
 ("H" ?Р)
 ("J" ?О)
 ("K" ?Л)
 ("L" ?Д)
 (":" ?:)
 ("\"" ?\")
 ("|" ?|)
 ("Z" ?Я)
 ("X" ?Ч)
 ("C" ?С)
 ("V" ?М)
 ("B" ?И)
 ("N" ?Т)
 ("M" ?Ь)
 ("<" ?<)
 (">" ?>)
 ("?" ??))

(set-language-info-alist
 "Russian-Uni" `((charset cyrillic-iso8859-5)
                 (nonascii-translation
                  . ,(get 'cyrillic-koi8-r-nonascii-translation-table
                          'translation-table))
                 (coding-system utf-8-unix)
                 (coding-priority utf-8-unix cyrillic-koi8 cyrillic-iso-8bit)
                 (input-method . "russian-unipunct-ng")
                 (features cyril-util)
                 (unibyte-display . cyrillic-koi8)
                 (sample-text . "Russian (Русский)	Здравствуйте/Привіт!")
                 (documentation . "\
Support for Russian using UTF8 and the russian-unipunct-ng input method.")
                 (tutorial . "TUTORIAL.ru"))
 '("Cyrillic"))

(setq default-input-method "russian-unipunct-ng")

(provide 'unipunct)

;;; unipunct-ng.el ends here
