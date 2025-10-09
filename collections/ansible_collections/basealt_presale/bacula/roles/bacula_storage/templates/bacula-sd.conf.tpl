#
# "Global" Storage configuration specifications
#
Storage {
  Name = {{bacula_sd_name}}
  SDPort = {{bacula_sd_port}}
  WorkingDirectory = "{{bacula_sd_work_dir}}"
  Pid Directory = "{{bacula_sd_pid_dir}}"
  Maximum Concurrent Jobs = {{bacula_sd_max_jobs}}
}

#
# List Directors who are permitted to contact Storage daemon
#
Director {
  Name = {{bacula_dir_name}}
@{{bacula_sd_pass_tpl_dst}}
}

@|"sh -c 'for f in /etc/bacula/device.d/*.conf ; do echo @${f} ; done'"

#
# Send all messages to the Director,
# mount messages also are sent to the email address
#
Messages {
  Name = Standard
  director = dir = all
}
