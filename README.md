# Luvision  ;-)
* This repo includes some information only for luvision members. 
* [contribute]: If you want to open an account or to add more information to this doc, please contact Mengqi or directly pull a request. 

## content
* [Server and Fileserver](#Servers-and-fileserver), read before using the servers. 
* [Scheduling Tool](), read before running any code on the server.  
* [Reimbursement in TBSI](#Reimbursement-in-TBSI), 清华报销

## Servers and fileserver

* Keep in mind: 
    - nerver use luvision account to run code on the server. Please use your own account and the queuing tool to submit jobs. Otherwise, you may terminate someones’ running jobs. 
    - luvision account is the only superuser, and can only be used to install publicly used libraries, which may has different versions, such as cuda 7.0/8.0/…. Specify the version you want use in your local account `.bashrc` / `.theanorc` / … So that evryone’s setting will not affect others’. 


* Server: 
    - `ssh <userName>@svr1.local`  # or svr2
        * if doesn't work --> use NAT IP address: `ssh <userName>@10.8.5.248`  # or 246 for sever 2 
    - open accounts: since the servers share the home folder, please make sure the newly added users have the same userID and groupID on the servers. 
    - the home folder is mounted from the fileserver, you can do everything in your own home folder. 

* Fileserver: 
    - Because of the security issue of the curlftpfs / samba / … , we only enable NFS on the fileserver. Don't enable other mount methods. 
    - Currently, only the home folder on the servers are mounted from the fileserver. So that your own home folder is large enough to do anything you want. The ownership of the files is related to the  

* `apt-get` without sudo 
    - `apt-get download tmux` # get the .deb file 
    - `ar x tmux*.deb` # extract the contents 
    - `tar xvzf data.tar.gz` # the file data.tar.gz has all the stuff which you need for executing the software 
    - `./usr/bin/tmux` # ./usr folder can be moved to other directory for convinience 
    - add `/home/<userName>/usr/bin/` to PATH, add to the end of `~/.bashrc` and source it. 
    - can directly use command tmux 

* [cuDNN without sudo (in your home folder)](https://github.com/mjiUST/driver_cuda_cudnn#cudnn-without-sudo-in-your-home-folder-2)
 
 
## Reimbursement in TBSI

<a name="sec3"></a>
