
jquery.sticky-kit.min.js: jquery.sticky-kit.js
	npx google-closure-compiler --language_in=ECMASCRIPT5 $< > $@

jquery.sticky-kit.js: jquery.sticky-kit.coffee
	npx -p coffeescript coffee -p -c $< > $@

copy:
	cp jquery.sticky-kit.js site/www/src/
	cp jquery.sticky-kit.min.js site/www/src/
