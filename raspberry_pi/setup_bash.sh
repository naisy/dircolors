#!/bin/bash

####################
# pi user
####################
#-    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w \$\[\033[00m\] '
#+    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\[\033[01;32m\]\h\[\033[00;00m\]:\[\033[01;35m\]\w\[\033[00m\]\$ '

#-    alias ls='ls --color=auto'
#+    alias ls='ls -asiF --color=auto'
sed -i 's/PS1='\''\${debian_chroot:+(\$debian_chroot)}\\\[\\033\[01;32m\\\]\\u@\\h\\\[\\033\[00m\\\]:\\\[\\033\[01;34m\\\]\\w \\\$\\\[\\033\[00m\\\] '\''/PS1='\''\${debian_chroot:+(\$debian_chroot)}\\\[\\033\[01;32m\\\]\\u@\\\[\\033\[01;32m\\\]\\h\\\[\\033\[00;00m\\\]:\\\[\\033\[01;35m\\\]\\w\\\[\\033\[00m\\\]\\\$ '\''/g' /home/pi/.bashrc
sed -i 's/alias ls='\''ls --color=auto'\''/alias ls='\''ls -asiF --color=auto'\''/g' /home/pi/.bashrc

####################
# root user
####################
cat <<EOF>> /root/.bashrc

PS1='${debian_chroot:+($debian_chroot)}\[\033[01;37m\]\u@\[\033[01;32m\]\h\[\033[00;00m\]:\[\033[01;35m\]\w\[\033[00m\]\$ '
alias ls='ls -asiF --color=auto'
EOF

