cp _config.yml _config_bk.yml
echo 'copied config'
sed -i 's/http:\/\/localhost:4000/https:\/\/ristache\.com/g' _config.yml
echo 'changed website to ristache.com'
bundle exec jekyll build
echo 'finished building'
rm -rf /var/www/example.com/
echo 'deleted old website'
mkdir /var/www/example.com/
cp images/favicon* ./_site/
echo 'copied images'
cp -r ./_site/* /var/www/example.com/
echo 'copied website'
cp -r secret/* /var/www/example.com/
echo 'copied secret part'
mv _config_bk.yml _config.yml
echo 'done, copied backup back to config'