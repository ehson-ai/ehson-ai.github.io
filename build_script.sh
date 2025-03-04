#!/bin/bash
cd /var/www/html
rm -rf index.html
git clone https://github.com/ehson-ai/first-repository.git temp_dir
mv temp_dir/index.html .
rm -rf temp_dir
chmod 644 index.html
sudo systemctl restart nginx

