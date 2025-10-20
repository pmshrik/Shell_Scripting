#!/bin/bash
echo "Renewing Let's Encrypt SSL certificates..."
sudo certbot renew --quiet
sudo systemctl reload nginx
