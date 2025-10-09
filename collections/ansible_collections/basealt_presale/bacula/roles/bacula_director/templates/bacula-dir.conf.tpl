Director {
  Name = {{bacula_dir_name}}
  DIRport = {{bacula_dir_port}}
  DIRaddress = {{bacula_dir_address}}
  QueryFile = "{{bacula_dir_conf_query_file}}"
  WorkingDirectory = "{{bacula_dir_conf_work_dir}}"
  PidDirectory = "{{bacula_dir_conf_pid_dir}}"
  Maximum Concurrent Jobs = {{bacula_dir_conf_max_jobs}}
@{{bacula_dir_conf_pass}}
  Messages = Daemon
}

Catalog {
  Name = {{bacula_db_catalog}}
  dbname = {{bacula_db_name}}
  user = {{bacula_db_user}}
  password = "{{bacula_db_password}}"
  DB Address = {{bacula_db_address}}
}

# Jobs
@|"sh -c 'for f in /etc/bacula/job.d/*.conf ; do echo @${f} ; done'"
# File Sets
@|"sh -c 'for f in /etc/bacula/fileset.d/*.conf ; do echo @${f} ; done'"
# Schedules
@|"sh -c 'for f in /etc/bacula/schedule.d/*.conf ; do echo @${f} ; done'"
# Clients
@|"sh -c 'for f in /etc/bacula/client.d/*.conf ; do echo @${f} ; done'"
# Storages
@|"sh -c 'for f in /etc/bacula/storage.d/*.conf ; do echo @${f} ; done'"
# Messages
@|"sh -c 'for f in /etc/bacula/messages.d/*.conf ; do echo @${f} ; done'"
# Pools
@|"sh -c 'for f in /etc/bacula/pool.d/*.conf ; do echo @${f} ; done'"
