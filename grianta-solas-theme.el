;;; grianta-solas.el -- Grianta Solas Barra -*- lexical-binding: t -*-

;; Copyright (C) 2023 Barra Ó Catháin

;; Author: Barra Ó Catháin

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

;; This file is not a part of GNU Emacs.

;;;; Commentary:

;; Barra's Solarized Light.
;; A light GNU Emacs theme based on the Solarized colour palette by Ethan Schoonover.

(deftheme grianta-solas
  "A light theme, based on the Solarized colour palette by Ethan Schoonover.")

;; Define all the colours we need:
(let
    ((solarized-base03	"#002b36")
     (solarized-base02	"#073642")
     (solarized-base01	"#586e73")
     (solarized-base00	"#657b83")
     (solarized-base0	"#839496")
     (solarized-base1	"#93a1a1")
     (solarized-base2	"#eee8d5")
     (solarized-base3	"#fdf6e3")
     (solarized-green	"#859900")
     (solarized-magenta	"#d33682")
     (solarized-yellow	"#b58900")
     (solarized-orange	"#cb4b16")
     (solarized-violet  "#6c71c4")
     (solarized-cyan	"#2aa198")
     (solarized-blue	"#268bd2")
     (solarized-red	"#dc332f"))
  
  (custom-theme-set-faces 'grianta-solas
			  ;; Basic Faces:
			  `(default ((t (:height 72 :background ,solarized-base3 :foreground ,solarized-base00
						 :weight medium :family "Iosevka Term SS08"))))
			  `(vertical-border ((t (:foreground ,solarized-base2))))
			  `(region ((t (:inverse-video t))))
			  `(linum ((t (:background ,solarized-base2))))
			  `(hl-line ((t (:background ,solarized-base2))))
			  `(fringe ((t (:background ,solarized-base3))))
			  `(error ((t (:inherit default :bold t :foreground ,solarized-red))))
			  
			  ;; Mode-Line Faces:
			  `(mode-line ((t (:background ,solarized-base2 :foreground ,solarized-green :weight medium
						       :box (:line-width (1 . 3) :color ,solarized-base2 :style flat-button)
						       :inherit default :overline t))))
			  `(mode-line-inactive ((t (:background ,solarized-base00 :foreground ,solarized-base2 :weight medium
								:box (:line-width (1 . 3) :color ,solarized-base00 :style flat-button)
								:inherit default :underline t))))
			  `(mode-line-highlight ((t (:box (:line-width (2 . 2) :color ,solarized-green :style flat-button)
											  :background ,solarized-green :foreground ,solarized-base3 :overline t))))
			  
			  ;; Tab-Bar Faces:
			  `(tab-bar ((t (:background ,solarized-base2 :foreground ,solarized-green :weight bold :inherit default
										 :underline nil :overline nil))))
			  `(tab-bar-tab ((t (:background ,solarized-base3 :foreground ,solarized-green :weight bold :inherit default
											 :overline t :underline nil :box nil))))
			  `(tab-bar-tab-inactive ((t (:background ,solarized-base00 :foreground ,solarized-base2 :weight medium
													  :underline nil))))
			  `(tab-bar-tab-ungrouped ((t (:background ,solarized-base00 :foreground ,solarized-base2 :weight medium
													  :underline nil))))
			  `(tab-bar-tab-group-inactive ((t (:background ,solarized-base00 :foreground ,solarized-base2 :weight medium
															:underline nil))))

			  ;; Eshell Faces:
			  `(eshell-prompt ((t (:inherit default :foreground ,solarized-green :weight bold :background ,solarized-base2 :box (:line-width (2 . 2) :color ,solarized-green :style flat-button)))))
			  
			  ;; Outline Faces:
			  `(outline-1 ((t (:inherit default :foreground ,solarized-green))))
			  `(outline-2 ((t (:inherit default :foreground ,solarized-yellow))))
			  `(outline-3 ((t (:inherit default :foreground ,solarized-orange))))
			  `(outline-4 ((t (:inherit default :foreground ,solarized-red))))
			  `(outline-5 ((t (:inherit default :foreground ,solarized-magenta))))
			  `(outline-6 ((t (:inherit default :foreground ,solarized-violet))))
			  `(outline-7 ((t (:inherit default :foreground ,solarized-blue))))
			  `(outline-8 ((t (:inherit default :foreground ,solarized-cyan))))

			  ;; Programming Faces:
			  `(font-lock-keyword-face ((t (:foreground ,solarized-orange)))) 
			  `(font-lock-comment-face ((t (:foreground ,solarized-base1))))
			  `(font-lock-string-face ((t (:foreground ,solarized-yellow))))
			  `(font-lock-variable-name-face ((t (:foreground ,solarized-green))))
			  `(font-lock-type-face ((t (:foreground ,solarized-cyan))))
			  `(font-lock-keyword-face ((t (:foreground ,solarized-violet))))

			  ;; Dired faces:
			  `(dired-header ((t (:foreground ,solarized-green :bold t))))
			  `(dired-directory ((t (:foreground ,solarized-blue))))
			  )

  (custom-theme-set-variables 'grianta-solas
							  '(x-underline-at-descent-line '(t))
							  '(tab-bar-new-button nil)
							  '(tab-bar-close-button nil))) 

(provide 'grianta-solas)
