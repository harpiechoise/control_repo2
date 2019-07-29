class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDFwERj7tXE5xyz0JoehQ1E9gheDW8YWYFA0mW5D//DDJPZet20cdCUaK1hs+qO+jOPlTqolTRdz+tcSg73ZNMe+Rgw5wOsaidM+jocQpiXjDzz26mW0OHB7BEg7XDjPHjWeRYhrdNGWm03Wzv4xesT6Mg+a1vD8AsvMPp0bp3OmzLSqw+TATOOPhKhoGZ3qeXR9mssJQz2RqrY6HE+Enm+SE0nvfxosDjm1gueIvmEzCRkbAYPFXVxntHq6cL3j8am3MXvKcpduWoZ83I0CeT5rM+NbvfInLR+CB8q6t/GnSZl1zMyjCteDcZFrOpN5zP9+CHKmkQFj8LyemReqvqb',
  }  
}
