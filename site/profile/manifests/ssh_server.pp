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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCmYQTcfIQ8IyRcxkz/+UinxjK89WQoIzANqSjE+ju+fWnqb5atF8IJunO7Fr1TfKRObB+kjsK5xLvH6QKDriffT48a9CpDzotLhftitq3Z6yJffpq7+ZW6Im9uyYBN+XLl5qtCvFnnblUOA9wMwtwBRIYwrtl5/pnRyg0zv82ClilFPBvY0QbzfKk3RYRsn/9Z49TF0cyn/olvm2H3uhSBS2vXFHq3JS/OGIUv0DEWIyauRyc4EDjhfsYxvy7kk9n0sHBg4aIqiVkcqw6TBxQILt/nwlNnNM4xN94SJgPFy/uP3B2g7ZLGYTaPsLKoIikYfdQUCrYyFl2XNu/+YwKZ',
	}  
}
