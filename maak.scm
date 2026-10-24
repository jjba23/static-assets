(define-module (maak)
  #:declarative? #t
  #:use-module (maak maak))

(define deploy-dir
  "/srv/http/jointhefreeworld.org")

(define (deploy)
  "Deploy the static assets."
  (delete-file-recursively (~ "~a/static-assets" deploy-dir))
  (cp "static-assets" (~ "~a/" deploy-dir)))
