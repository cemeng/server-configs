server {
	listen 80;
	server_name runningitis.com www.runningitis.com;

	root /home/felixt/www/runningitis.com;
	index index.html index.htm;

	location / {
		try_files $uri $uri/ /index.html;
	}

}

# another virtual host using mix of IP-, name-, and port-based configuration
#
#server {
#	listen 8000;
#	listen somename:8080;
#	server_name somename alias another.alias;
#	root html;
#	index index.html index.htm;
#
#	location / {
#		try_files $uri $uri/ =404;
#	}
#}
