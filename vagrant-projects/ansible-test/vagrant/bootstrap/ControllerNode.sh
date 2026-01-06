#! /bin/bash

# update and upgrade
apt get-update
# apt get-upgrade

# install vim
sudo apt install -y vim 

# install nginx
sudo apt install -y nginx

# start and enable nginx
systemctl start nginx
systemctl enable nginx

# Create a simple test page (optional)
echo "<html><body><h1>Vagrant Nginx Test</h1><p>Nginx is running!</p></body></html>" > /var/www/html/index.html

# Set proper permissions
chown -R www-data:www-data /var/www/html
chmod -R 755 /var/www/html

# Test Nginx configuration
nginx -t

# Restart Nginx to apply changes
systemctl restart nginx

echo "Nginx installation completed!"
