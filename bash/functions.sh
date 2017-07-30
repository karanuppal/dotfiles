## ============================================================================
##                               Helper Functions
## ============================================================================

umount_bbg(){
    umount /Users/kuppal8/home
    umount /Users/kuppal8/newsrelm
    umount /Users/kuppal8/bigstorn
}

mount_bbg(){
    umount_bbg
    sshfs kuppal8@devsftp.bloomberg.com:/home13/kuppal8/ /Users/kuppal8/home -p 2222 -o IdentityFile=~/.toolkit/toolkit_ssh_key_kuppal8 -o follow_symlinks -o reconnect,ServerAliveInterval=10,ServerAliveCountMax=2
    sshfs kuppal8@devsftp.bloomberg.com:/bb/news/newsrelm/ /Users/kuppal8/newsrelm -p 2222 -o IdentityFile=~/.toolkit/toolkit_ssh_key_kuppal8 -o reconnect,ServerAliveInterval=10,ServerAliveCountMax=2
    sshfs kuppal8@devsftp.bloomberg.com:/bb/bigstorn/ /Users/kuppal8/bigstorn -p 2222 -o IdentityFile=~/.toolkit/toolkit_ssh_key_kuppal8 -o reconnect,ServerAliveInterval=10,ServerAliveCountMax=2
}

parse_git_branch() {
         git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
