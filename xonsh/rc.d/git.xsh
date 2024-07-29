aliases['gk'] = 'lazygit'
aliases['g']  = 'lazygit -p'
aliases['g.'] = 'lazygit -p .'
aliases['gl'] = 'lazygit log'


# Diff
aliases['gdiff'] = "diff --exclude=.git --exclude=bin -bur --strip-trailing-cr"

def FixLibs():
  # Confy Base
  sudo mount --bind /ssd/dev/gd/tools/zstd/  /ssd/dev/gd/tools/confy/src/lib/zstd
  # Minim
  sudo mount --bind /ssd/dev/gd/tools/zstd/  /ssd/dev/gd/tools/minim/src/lib/zstd
  sudo mount --bind /ssd/dev/gd/tools/slate/ /ssd/dev/gd/tools/minim/src/lib/slate
  sudo mount --bind /ssd/dev/gd/tools/confy/ /ssd/dev/gd/tools/minim/src/lib/confy

  # oQ3/defrag buildsystem
  sudo mount --bind /ssd/dev/gd/tools/confy/ /ssd/dev/gd/other/id3/oQ3/defrag/src/lib/confy
  sudo mount --bind /ssd/dev/gd/tools/zstd/  /ssd/dev/gd/other/id3/oQ3/defrag/src/lib/confy/src/lib/zstd/
  # oQ3/engine buildsystem
  sudo mount --bind /ssd/dev/gd/other/id3/oQ3/bs/ /ssd/dev/gd/other/id3/oQ3/defrag/src/build/engine
  sudo mount --bind /ssd/dev/gd/tools/confy/ /ssd/dev/gd/other/id3/oQ3/defrag/src/build/engine/lib/confy
  # sudo mount --bind /ssd/dev/gd/tools/zstd/  /ssd/dev/gd/other/id3/oQ3/defrag/src/build/engine/lib/confy/src/lib/zstd/

  sudo mount --bind /ssd/dev/gd/tools/confy/ /ssd/dev/gd/jera/src/lib/confy
  sudo mount --bind /ssd/dev/gd/tools/zstd/  /ssd/dev/gd/jera/src/lib/confy/src/lib/zstd
# Hack to submodules
aliases['fixlibs'] = 'cl ; FixLibs();'

