# LINUX

ls

```
Desktop  Documents  Downloads  Music  Pictures  Public  Templates  Videos
```

ls - l

```
drwx------ 2 sysadmin sysadmin 4096 Dec 20  2017 Desktop                        
drwx------ 4 sysadmin sysadmin 4096 Dec 20  2017 Documents                      
drwx------ 2 sysadmin sysadmin 4096 Dec 20  2017 Downloads                      
drwx------ 2 sysadmin sysadmin 4096 Dec 20  2017 Music                          
drwx------ 2 sysadmin sysadmin 4096 Dec 20  2017 Pictures                       
drwx------ 2 sysadmin sysadmin 4096 Dec 20  2017 Public                         
drwx------ 2 sysadmin sysadmin 4096 Dec 20  2017 Templates                      
drwx------ 2 sysadmin sysadmin 4096 Dec 20  2017 Videos                         
```

ls -r

```
Desktop  Documents  Downloads  Music  Pictures  Public  Templates  Videos
```

ls -rl  
ls -lr
ls -l -r

```
Desktop  Documents  Downloads  Music  Pictures  Public  Templates  Videos
```

pwd

```
/home/sysadmin
```

cd  
cd ..  
cd ~  
/
```
/
```

ls -l /var/log/

```
-rw-r--r-- 1 root   root  18047 Dec 20  2017 alternatives.log                   
drwxr-x--- 2 root   adm    4096 Dec 20  2017 apache2                            
drwxr-xr-x 1 root   root   4096 Dec 20  2017 apt                                
-rw-r----- 1 syslog adm     700 Oct 18 23:17 auth.log                           
-rw-r--r-- 1 root   root  47816 Dec  7  2017 bootstrap.log                      
-rw-rw---- 1 root   utmp      0 Dec  7  2017 btmp                               
-rw-r----- 1 syslog adm     333 Oct 18 23:17 cron.log                           
-rw-r----- 1 root   adm   85083 Dec 20  2017 dmesg                              
-rw-r--r-- 1 root   root 325238 Dec 20  2017 dpkg.log                           
-rw-r--r-- 1 root   root  32064 Dec 20  2017 faillog                            
drwxr-xr-x 2 root   root   4096 Dec  7  2017 fsck                               
-rw-r----- 1 syslog adm     106 Oct 18 23:11 kern.log                           
-rw-rw-r-- 1 root   utmp 292584 Oct 18 23:11 lastlog                            
-rw-r----- 1 syslog adm   13639 Oct 18 23:17 syslog                             
drwxr-xr-x 2 root   root   4096 Apr 11  2014 upstart                            
-rw-rw-r-- 1 root   utmp    384 Oct 18 23:11 wtmp 
```