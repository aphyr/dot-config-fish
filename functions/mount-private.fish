function mount-private
  sudo mount ~/private ~/private -t \
    ecryptfs -o key=passphrase,ecryptfs_cipher=aes,ecryptfs_key_bytes=24,\
    ecryptfs_passthrough=no,ecryptfs_enable_filename_crypto=yes,\
    no_sig_cache=yes
end
