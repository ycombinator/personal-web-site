#lang scheme/base

(require (planet "leftparen.scm" ("vegashacker" "leftparen.plt" 4 (= 1))))

(define-app my-app
  (index-page (url "/"))
  (about-me-page (url "/about-me"))
  (resume-page (url "/resume")))
