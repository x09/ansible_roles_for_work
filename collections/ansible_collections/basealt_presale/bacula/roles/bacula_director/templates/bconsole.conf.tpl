#
# Bacula User Agent (or Console) Configuration File
#
Director {
  Name = {{bacula_dir_name}}
  DIRport = {{bacula_dir_port}}
  address = {{bacula_dir_address}}
@{{bacula_dir_conf_pass}}
}
