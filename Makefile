production:
	bundle exec jekyll build

dev:
	bundle exec jekyll serve --watch --config=_config.yml,_development.yml --host=city05.sfgov.org

deploy:
	make production && \
    cp /home/webadmin/analytics/analytics.usa.gov/_site/* /var/www/html/analytics/ -R

