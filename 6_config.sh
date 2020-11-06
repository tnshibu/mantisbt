sudo chmod 755 ~/mantisbt/config/config_inc.php
sudo chown $USER:$USER ~/mantisbt/config/config_inc.php
echo '$g_phpMailer_method             = PHPMAILER_METHOD_SMTP;' >> mantisbt/config/config_inc.php


