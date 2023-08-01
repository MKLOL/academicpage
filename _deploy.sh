cp _config.yml _config_bk.yml
sed -i 's/http:\/\/localhost:4000/https:\/\/ristache\.com/g' _config.yml
bundle exec jekyll build
rm -rf /var/www/example.com/
mkdir /var/www/example.com/
cp images/favicon* ./_site/
cp -r ./_site/* /var/www/example.com/
cp -r secret/* /var/www/example.com/
mv _config_bk.yml _config.yml