aliases['brc']   = 'lvim ~/.bashrc-personal'
aliases['bgfix'] = 'feh --bg-scale /hdd/img/wallp/vrising.png  /hdd/img/wallp/vertical/artgermBoss.jpg'

# General
# aliases rl=". ~/.bashrc"
aliases['t']   = "touch"
aliases['cl']  = "clear"
aliases['md']  = "mkdir"
aliases['rn']  = "mv"
aliases['q']   = "exit"
aliases[':q']  = "exit"
aliases['lsa'] = 'ls -laRtc'
aliases['lsl'] = 'ls -latc'
aliases['lsr'] = 'ls -R'
aliases['lns'] = 'ln -ivs'
aliases['lnh'] = 'ln -iv'
aliases['rmf'] = 'rm -rf'
aliases['r']   = 'ranger'
aliases['r.']  = 'ranger .'
aliases['tw']  = 'taskwarrior-tui'
aliases['s']   = "rg"

# Music
aliases['ogg'] = "yt-dlp --extract-audio --audio-format vorbis -o \"%(title)s.%(ext)s\" @($args)"

# Keyboard Layout
aliases['es'] = "setxkbmap es"
aliases['us'] = "setxkbmap us"

# Gentoo chroot
# def GentooChroot():
#   sudo mount /dev/sda7 /gto
#   sudo mount /dev/sda10 /gto/boot/efi
#   sudo mount --types proc /proc /gto/proc
#   sudo mount --rbind /sys /gto/sys
#   sudo mount --make-rslave /gto/sys
#   sudo mount --rbind /dev /gto/dev
#   sudo mount --make-rslave /gto/dev
#   sudo mount --bind /run /gto/run
#   sudo mount --make-slave /gto/run
#   sudo mount /dev/sdb3 /gto/var/tmp
#   sudo chroot /gto /bin/bash -c "source /etc/profile ; su sokam"
# aliases['gto'] = 'GentooChroot'

# vi: ft=python
