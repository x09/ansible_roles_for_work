#
# List Directors who are permitted to contact this File daemon
#
Director {
  Name = {{bacula_dir_name}}
@{{bacula_fd_pass_conf_dst}}
}

#
# "Global" File daemon configuration specifications
#
FileDaemon {
  Name = {{bacula_fd_name}}
  FDport = {{bacula_fd_port}}
  WorkingDirectory = {{bacula_fd_work_dir}}
  Pid Directory = {{bacula_fd_pid_dir}}
  Maximum Concurrent Jobs = {{bacula_fd_max_jobs}}

  # Enable Data Signing
  PKI Signatures = {{bacula_pki_signatures}}
  # Enable Data Encryption
  PKI Encryption = {{bacula_pki_encryption}}
  # Public and Private Keys
  PKI Keypair = "{{bacula_pki_keypair}}"
  # ONLY the Public Key
  PKI Master Key = "{{bacula_pki_master_key}}"
  PkiCipher = {{bacula_pki_cipher}}
}

# Send all messages except skipped files back to Director
Messages {
  Name = Standard
  director = dir = all, !skipped, !restored
}
