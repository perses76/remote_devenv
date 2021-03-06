# Install, set up, organize development environment on remote server.

Instructions how to set up, organize and work with working invironment on remote Server.

* Platform: AWS
* OS: Arch-Linux
* Editor: Vim (from Arch-Linux)


## Organization.

    * DevEnv (current project)
        * Vim
        * Profile
        * supervisor
    * Project Personal Settings
        * Vim project settings.
        * usefull commands
        * environment variables.
    * Project 
        * Source code.
        * settings.

## Users, Groups, Roles, Policies
### Users

* AWS root - only console access with 2FA.
* vadim - policy: **Vadim_Developer**, groups: **Developers**, ssh key: *devenv*

### Roles

VadimDevInstance - roles assgined to EC2 instances where I work for customer projects


### Policies

* Vadim_Developer - S3 - Full, EC2 - start/stop, CodeCommit - Full
* VadimSecretKeys - S3 - vo-secred full access. - Make it realonly




## S3 Folders

     /vo-secrets - folder with  full access only for root. policy VadimSecretKeys - has readonly access 
     . ALL MY PRIVATE KEYS FOR ALL PROJECTS.

         /personal - my personal keys. (ssh: devenv and devenv.pub)
         /proj1 - secret keys for specific project.




## Install OS on AWS

Search for *arch-linux* in Community AIM.
Install the last version of *arch-linux*


## Install git

Run:

```
pacman -Suy
reboot
pacman -S git
```

## Copy ssh keys and config files

Copy shh keys to access GitHub and/or Bitbucket or anything else.

Example:
```
scp -i ~/.ssh/vadim-aws-personal ~/.ssh/devenv.pub root@dev.me:~/.ssh/id_rsa.pub
scp -i ~/.ssh/vadim-aws-personal ~/.ssh/devenv root@dev.me:~/.ssh/id_rsa
scp -i ~/.ssh/vadim-aws-personal ~/.gitconfig root@dev.me:~/.gitconfig
```

where: 

* **~/.ssh/vadim-aws-personal** - private ssh key for server access
* **~/.ssh/devenv.pub** - public ssh key to access GitHub and BitBuket
* **~/.ssh/devenv** - private ssh key to access GitHub and BitBuket


Change permissions of ssh keys:

```
chmod 700 /root/.ssh
chmod 400 /root/.ssh/*
```

## Clone DevelopmentEnviroment project locally

```
git clone git@github.com:perses76/remote_devenv.git ~/devenv
```

## Run setup.sh


```
~/devenv/setup.sh

```

## Install Vim plugins

Open vim and run command: **PlugInstall**

List of plugins can be find in: **~/.vim/vimrc** file.

## Colors and Putty

Putty: https://darekkay.com/blog/my-putty-color-scheme/
    Font: Consolas 9.
    Cursor Color: Green
Terminal and server color: https://gist.github.com/limingjie/4975c36d13d0927613e6
