# centos69
vagrant file about centos69 enjoy it

## what is it
This is vagrant configure file only useful for `centos69.box`.

The `centos69.box` has been upload to my `baiduyun`. definitely if you are not in China ,you can download the box in [v1710.01](https://app.vagrantup.com/centos/boxes/6)

## support service
### a.terminal preference && keyboard preference
in the folder `shellSource`,you can find a file named `bash_profile` edit this file ,you could make your own `bash_profile`

the same theory ,you can make your own `vimrc` in the file named `vimrc`

### b.php70 version installed
when you install `centos69.box` you have PHP installed but the version is too older ,so `update_php70.sh` will help you to update older PHP version[5.4] to php70.


### c.python35 version installed
centos69 support Python2.6, in many cases you want to use python3. the `update_python35.sh`can automatic install python35


## package box release version
if you are familiar to vagrant. you will know this section is doing what. forgive my not primitive English .you know what I say.

### version 0.1
support function
`a b c`

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
