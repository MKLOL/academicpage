bundle exec jekyll build
rm -rf var/www/example.com/
cp -r ./_site/* /var/www/example.com/
cp -r ./assets/ /var/www/example.com/
cp -r ./images/ /var/www/example.com/