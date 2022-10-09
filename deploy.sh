bundle exec jekyll build
rm -rf /var/www/example.com/
mkdir /var/www/example.com/
cp images/favicon* ./_site/
cp -r ./_site/* /var/www/example.com/