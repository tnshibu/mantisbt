echo mysql-apt-config        mysql-apt-config/repo-url       string  http://repo.mysql.com/apt                             | debconf-set-selections
echo mysql-apt-config        mysql-apt-config/select-server  select  mysql-8.0                                             | debconf-set-selections
echo mysql-community-server  mysql-community-server/remove-data-dir  boolean false                                         | debconf-set-selections
echo mysql-apt-config        mysql-apt-config/select-preview select  Disabled                                              | debconf-set-selections
echo mysql-apt-config        mysql-apt-config/preview-component      string                                                | debconf-set-selections
echo mysql-apt-config        mysql-apt-config/select-product select  Ok                                                    | debconf-set-selections
echo mysql-community-server  mysql-server/lowercase-table-names      select                                                | debconf-set-selections
echo mysql-apt-config        mysql-apt-config/select-tools   select  Enabled                                               | debconf-set-selections
echo mysql-apt-config        mysql-apt-config/repo-codename  select  bionic                                                | debconf-set-selections
echo mysql-community-server  mysql-community-server/data-dir note                                                          | debconf-set-selections
echo mysql-apt-config        mysql-apt-config/unsupported-platform   select  abort                                         | debconf-set-selections
echo mysql-community-server  mysql-server/default-auth-override      select  Use Strong Password Encryption (RECOMMENDED)  | debconf-set-selections
echo mysql-community-server  mysql-community-server/root-pass-mismatch       error                                         | debconf-set-selections
echo mysql-apt-config        mysql-apt-config/repo-distro    select  ubuntu                                                | debconf-set-selections
echo mysql-apt-config        mysql-apt-config/tools-component        string  mysql-tools                                   | debconf-set-selections
