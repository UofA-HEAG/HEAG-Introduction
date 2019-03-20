# Cluster Computing on Phoenix

https://wiki.adelaide.edu.au/hpc

## Get your Account
Speak to your supervisor if you can request an account.
Reqeust your account here: https://www.adelaide.edu.au/technology/research/high-performance-computing/phoenix-hpc/register-for-an-account  
You will receive a mail from the Technology Service Desk to acknowledge that your access has been provisioned. 
It may take 1-2 days for the system to update and for you to log in.


## Configuration

It is quite handy to add phoenix to your `~/.ssh/config`. 
On your computer, open (or create) the config file and add the following lines:

```
Host phoenix
User aXXXXXX
HostName phoenix.adelaide.edu.au
ForwardX11Trusted yes
ForwardX11 yes
```
(Replace `aXXXXX` with your UofA ID.)

__Login__: Simply type `ssh phoenix` and confirm that you want to add the connection to the list of known hosts.

Instead of sending your password over the network every time you login etc, you can also use SSH keys for authentication.
This is easier and more secure.
A SSH key pair (public and private) is generated and sharerd with the remote server (phoenix).
Therefore, execute the following steps:

On your computer:
```
ssh-keygen -o -C aXXXXXXX@phoenix.adelaide.edu.au -f ~/.ssh/id_phoenix
ssh-copy-id -i ~/.ssh/id_phoenix.pub phoenix.adelaide.edu.au
```
You will be asked for your password - this is the password of your UofA account (aXXXXX).

Then add the key to your `~/.ssh/config` by adding the last line to your previous configuration:
```
Host phoenix
User aXXXXXX
HostName phoenix.adelaide.edu.au
ForwardX11Trusted yes
ForwardX11 yes
IdentityFile ~/.ssh/id_phoenix
```

Now you can login via `ssh phoenix` and the password (or no password) of your key.


## Useful Commands

On phoenix:

`rcdu`: Shows your personal disk usage  
`du -h`: Shows your disk usage of specific folders in a human-readable format

On your computer:

`scp phoenix:~/SomeFile.txt .`: This copies the file `SomeFile.txt` stored in your phoenix home folder to the folder on your computer you are currently in.
