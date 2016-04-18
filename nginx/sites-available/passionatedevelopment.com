server {
	listen 80 default_server;
	listen [::]:80 default_server ipv6only=on;
	server_name passionatedevelopment.com passionatedevelopment.com.au www.passsionatedevelopment.com www.passionatedevelopment.com.au;

	root /home/felixt/www/passionatedevelopment.com;
	index index.html index.htm;

	location / {
		try_files $uri $uri/ /index.html;
	}

}
