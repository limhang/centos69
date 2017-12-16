# centos69
vagrant file about centos69 enjoy it

## what is it
This is vagrant configure file only useful for `centos69.box`.

The `centos69.box` has been upload to my `baiduyun`. definitely if you are not in China ,you can download the box in [v1710.01](https://app.vagrantup.com/centos/boxes/6)

## support service
### a、terminal preference && keyboard preference
in the folder `shellSource`,you can find a file named `bash_profile` edit this file ,you could make your own `bash_profile`

the same theory ,you can make your own `vimrc` in the file named `vimrc`

### b、php70 version installed
when you install `centos69.box` you have PHP installed but the version is too older ,so `update_php70.sh` will help you to update older PHP version[5.4] to php70.


### c、python35 version installed
centos69 support Python2.6, in many cases you want to use python3. the `update_python35.sh`can automatic install python35


### d、mysql install
this function is useful for v0.2 . shell script is mysqlInstall.sh

### e、python-virtualenv integrated && mysql configure
the step `e` is not install some software . this step just configure python-virtualenv and mysql configure .
example : we will set mysql root password and something else.

### f、make the python scratch workflow work well. include python-virtualenv-lib && scratch-demo-script
the step `f` is also not install software . so it has integrated in centos69v03.box

### g、install nginx 
this step install nginx into the virtual machine. you can type `centos.com` in your broswer, of course, you need configure your etc/hosts first. `192.168.33.10  centos.com`. when you configured etc/hosts. and you will see `hello word`. this indicate you have install nginx success.

### h、integrate php70 nginx redis laravel node git so many software [fork from homestead/laravel 501]
because i'd not familiar with nginx configure. i try it. But it makes me crazy. allways feedback 403. i know this is access issuses. the end, i choose homestead/laravel. so version 0.5 is different to all of before version. it based on homestead/laravel. mainly for laravel development. The vm system is ubuntu.

## package box release version
if you are familiar to vagrant. you will know this section is doing what. forgive my not primitive English .you know what I say.

### version 0.1
support function
`a b c`

### version 0.2
support function
`a b c d e`

### version 0.3
support function
`a b c d e f`

### version 0.4
support function
`a b c d e f g`

### version 0.5 
support function
`a b c d e f g h`

## known issue
### sync folder fail
terminal error show

```
Vagrant was unable to mount VirtualBox shared folders. This is usually
because the filesystem "vboxsf" is not available. This filesystem is
made available via the VirtualBox Guest Additions and kernel module.
Please verify that these guest additions are properly installed in the
guest. This is not a bug in Vagrant and is usually caused by a faulty
Vagrant box. For context, the command attempted was:
```

you can use this command in your terminal [in folder where Vagantfile located]
```
vagrant plugin install vagrant-vbguest
```

so you can execute `vagrant reload --provision`

### pip3 or lib bug
when i installed python35, i used pip3 install virtualenv, but this has a error about not find a special lib.

you can use link command to fix it. but the strange things is it not work, when i reload vagrant ,it works...

i do not why. so i decided `link pip3 special lib in the scripts` -- **read this `warning:vagrant must be reload`**


## Document
[more detail](http://blog.coderhelper.cn/%E9%80%9A%E7%94%A8%E6%8A%80%E8%83%BD/%E5%88%B6%E4%BD%9Ccentos69box.html)
