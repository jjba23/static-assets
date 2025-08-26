(define-module (maak)
  #:use-module (maak maak)
  #:declarative? #t)

(define deploy-dir "/src/http/jointhefreeworld.org")

(define (deploy)
  "Deploy the static assets."
  (delete-file-recursively (~ "~a/static-assets" deploy-dir))
  ($ (list (~ "cp -rfv static-assets ~a/" deploy-dir))))
