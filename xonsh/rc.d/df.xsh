# Defrag Launcher
dfDir = "/app/vg/defrag"
def dfc():
  nim $dfDir/df.nims -c:$1

aliases['w-osdf'] = "wine /app/vg/defrag/osdf.x64.exe +set r_fullscreen 0"
aliases['l-osdf'] = "/app/vg/defrag/osdf.x64 +set r_fullscreen 0"

aliases['lloader']       = "/app/vg/defrag/osdf.x64 +set r_fullscreen 0 +set fs_game testdg"
aliases['lloader-spam']  = "LD_DEBUG=all lloader"
aliases['lloader-trace'] = "rm ./out-trace.txt;cl;lloader-spam >> ./out-trace.txt 2>&1"
aliases['lloader-cr']    = "cl;cd ~/gd/nim/ffi/ex/loader/;scons -c;scons;cp ./uix86_64.so ~/vg/defrag/testdg/uix86_64.so;lloader"
aliases['lloader-debug'] = "rm ./out-dbg.txt;cl;lloader-cr >> ./out-dbg.txt 2>&1"

# Mapping tools
autoDir = "~/ld/games/q3/res/src/autoQ3"
aliases['q3skel'] = f"python {autoDir}/skel.py {dfDir}"
aliases['q3auto'] = f"python {autoDir}/auto.py {dfDir} ."

