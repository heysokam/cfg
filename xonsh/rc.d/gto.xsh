# Gentoo
aliases ['gto-upd'] = "sudo emaint -a sync && sudo emerge -avuDN @world && sudo emerge --depclean && sudo eclean --deep --package-names distfiles && sudo eclean --deep --package-names packages && sudo eclean-kernel -n 1 -d"
