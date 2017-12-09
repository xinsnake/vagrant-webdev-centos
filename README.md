# vagrant-webdev-centos

Once upon a time you need a PHP and MySQL on a Linux machine to do your development.
It is called a LAMP stack because you have Linux + Apache + MySQL + PHP.

These days, however, you may not need that most of the time because you have so many
fun things to play with and PHP + MySQL is not the "cool kids'" game anymore.

Nevertheless, you may sometimes want a LAMP server to fix some minor issue you built
5 years ago, or to show your friends how things got done in the old days... So here
is a machine for you!

# Quick start #

* To start your development environment, please follow these commands:
```bash
$ git clone git@github.com:xinsnake/vagrant-webdev-centos.git
$ cd vagrant-webdev
$ vagrant up
```

* After that please add the following lines to your "hosts" file:
```
192.168.156.10      localhost.dev
192.168.156.10      php56.localhost.dev
192.168.156.10      php72.localhost.dev
192.168.156.10      pm.localhost.dev
```

* Default VirtualHost
  * localhost.dev (mapped to /vagrant/wwwroot)
  * pm.localhost.dev (mapped to /usr/share/phpMyAdmin) default root password: `password`

* Please note:
  * Keep your internet conection on and if you have a data limit please watch out. I don't know how much data it will
    use but it will be more than 500MB.

# VirtualBox and NFS file sharing #

You may notice the performance issue using VirtualBox and native file sharing, uncomment the ``config.vm.synced_folder``
__after__ the first "vagrant up". If you do it on the first "vagrant up", you will receive an error.

# Quick summary of the configuration #

* CentOS 7
* Nginx
* MariaDB
* PHP-FPM
* phpMyAdmin

# Resources #

* If you are new to Vagrant, please checkout http://www.vagrantup.com/ for a quick start
* CentOS base box is based on the bento box https://github.com/chef/bento
