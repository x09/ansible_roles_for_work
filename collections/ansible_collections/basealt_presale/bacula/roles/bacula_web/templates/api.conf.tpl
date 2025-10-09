[api]
auth_type = "basic"
debug = "0"
lang = "ru"

[db]
enabled = "1"
type = "pgsql"
name = "{{ bacula_db_name }}"
login = "{{ bacula_db_user }}"
password = "{{ bacula_db_password }}"
ip_addr = "{{ bacula_db_address }}"
port = "{{ bacula_db_port }}"
path = ""

[bconsole]
enabled = "1"
bin_path = "/usr/bin/bconsole"
cfg_path = "{{ bconsole_conf_dest }}"
use_sudo = "1"
interpret_bacula_errors = "1"

[jsontools]
enabled = "1"
use_sudo = "1"
bconfig_dir = "{{ bconsole_work_dir }}"
bdirjson_path = "/usr/sbin/bdirjson"
dir_cfg_path = "/etc/bacula/bacula-dir.conf"
bsdjson_path = "/usr/sbin/bsdjson"
sd_cfg_path = "/etc/bacula/bacula-sd.conf"
bfdjson_path = "/usr/sbin/bfdjson"
fd_cfg_path = "/etc/bacula/bacula-fd.conf"
bbconsjson_path = "/usr/sbin/bbconsjson"
bcons_cfg_path = "/etc/bacula/bconsole.conf"
