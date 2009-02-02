#lang scheme/base

(require (planet "leftparen.scm" ("vegashacker" "leftparen.plt" 4 (= 1))) "app.scm")

(define-page (index-page req)
  #:title my-title
  (** `(h1 ,my-title)
	  things-I-have-done
	  things-I-want-to-do))

(define things-I-have-done
  (**
   '(h2 "Things I have done")
   `(ul
	 (li "Created a " (a ((href "http://github.com") (target "_blank")) "github") " account.")
	 (li "Attended the last " (a ((href "http://superhappydevhouse.org") (target "_blank")) "SHDH") " (Thanks Tom).")
	 (li "Signed up on the SHDH announce list.")
	 (li "Dusted off my old linux box and got it running again.")
	 (li "Installed "
		 (a ((href "http://www.plt-scheme.org/software/mzscheme/") (target "_blank")) "mzscheme")
		 " and "
		 (a ((href "http://blog.leftparen.com/") (target "_blank")) "left paren."))
	 (li "Created this site using left paren."))))

(define things-I-want-to-do
  (** 
   '(h2 "Things I want to do")
   '(ul (li "Attend the next SHDH.")
	   (li "Keep adding to this page."))))

(define my-title "Shaunak's home on the Internet")
