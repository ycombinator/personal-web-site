#lang scheme/base

(require (planet "leftparen.scm" ("vegashacker" "leftparen.plt" 4 (= 1))) "app.scm")

(define-page (index-page req)
  #:title my-title
  #:css '("/css/main.css")
  (** `(h1 ,my-title)
	  `(div ((id "things_done")) ,things-I-have-done)
	  `(div ((id "things_todo")) ,things-I-want-to-do)
	  `(div ((id "me")) ,me-elswhere-on-the-internet)))

(define things-I-have-done
  (**
   '(h2 "Things I have done")
   `(ul
	 (li "Attended the last " (a ((href "http://superhappydevhouse.org") (target "_blank")) "SHDH") " (Thanks Tom).")
	 (li "Signed up on the SHDH announce list.")
	 (li "Created a "
		 (a ((href "http://github.com") (target "_blank")) "github")
		 " account and "
		 (a ((href "http://github.com/ycombinator/personal-web-site/tree/master") (target "_blank")) "my first repository."))
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

(define me-elswhere-on-the-internet
  (**
   '(h2 "Me, elsewhere on the Internet")
   '(ul
	 (li (a ((href "http://flickr.com/photos/25445776@N08/") (target "_blank")) "Flickr."))
	 (li (a ((href "http://twitter.com/shaunak") (target "_blank")) "Twitter."))
	 (li (a ((href "http://news.yahoo.com") (target "_blank")) "My day job.")))))

(define my-title "Shaunak's home on the Internet")
