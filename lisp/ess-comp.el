;;; ess-comp.el --- setting for compiling, only.

;; Copyright (C) 1997 A. J. Rossini

;; Author: A.J. Rossini <rossini@stat.sc.edu>
;; Maintainer: A.J. Rossini <rossini@stat.sc.edu>
;; Created: 25 July 1997
;; Modified: $Date: 1998/04/06 20:18:41 $
;; Version: $Revision: 5.2 $
;; RCS: $Id: ess-comp.el,v 5.2 1998/04/06 20:18:41 rossini Exp $
;;
;; Keywords: start up, configuration.

;; This file is part of ess-mode.

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to
;; the Free Software Foundation, 675 Mass Ave, Cambridge, MA 02139, USA.

;;; Commentary:

;;; This file sets up all compilation needs.

(provide 'ess-comp)

;;; Code:

;;; primarily for setting up compile load-path properly (Emacs doesn't
;;; include '.' in the emacs lisp load path).

(add-to-list 'load-path nil)

;;(if (not (string-match "XEmacs\\|Lucid" emacs-version))
;;    (setq byte-compile-warnings '(free-vars
;;				  callargs 
;;				  unresolved
;;				  redefine
;;				  obsolete))
;;  (setq byte-optimize t))

;; These are required by every other file.

(require 'ess-vars)    ; set up the variables
(require 'ess)         ; configure
(require 'ess-site)    ; last, to overload previous settings.

 ; Local variables section

;;; This file is automatically placed in Outline minor mode.
;;; The file is structured as follows:
;;; Chapters:     ^L ;
;;; Sections:    ;;*;;
;;; Subsections: ;;;*;;;
;;; Components:  defuns, defvars, defconsts
;;;              Random code beginning with a ;;;;* comment
;;; Local variables:
;;; mode: emacs-lisp
;;; mode: outline-minor
;;; outline-regexp: "\^L\\|\\`;\\|;;\\*\\|;;;\\*\\|(def[cvu]\\|(setq\\|;;;;\\*"
;;; End:

;;; ess-comp.el ends here

