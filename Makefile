deploy:
	-rm -rfv /srv/http/jointhefreeworld.org/static-assets
	-cp -rfv static-assets /srv/http/jointhefreeworld.org/
