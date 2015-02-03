function private --description "mount private directory and go there"
  mount | grep ~/Private; or ecryptfs-mount-private
  cd ~/private
end
