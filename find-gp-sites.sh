#!/bin/bash
for wpconfig in /var/www/*/wp-config.php; do
site=${wpconfig%\/wp-config.php}; site=${site#\/var\/www\/};
echo "${site}";
done
