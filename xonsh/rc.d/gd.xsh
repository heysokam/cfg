# Projects: Quick access
## Website & Docs
aliases['web'] = 'cd ~/gd/web; cl;'
## Jera Engine
aliases['je']  = 'cd ~/gd/jera; cl;'
aliases['jer'] = 'je; r'
## m*dk
aliases['mdk'] = 'cd ~/gd/mdk; cl;'
aliases['mdr'] = 'mdk; r;'
aliases['mb']  = 'cl ; nim --hints:off build.nims;'
## n*dk
aliases['ndk'] = 'cd ~/gd/ndk; cl; GitNdk();'
aliases['ndr'] = 'ndk; r;'


#_______________________________________
# Depends on GitPython
#   yay -Sy python-gitpython
#   https://gitpython.readthedocs.io/en/stable/tutorial.html#tutorial-label
#___________________
# dependencies
import os, time, subprocess
from git import Repo
ignores = [".git", "src", "bin", "doc", "ref", "res", "skel", "tests", "examples", "libs", "packages"]
#___________________
# Report
def GitReport (path :str) ->bool:
  ## Reports the current state of the repository, using GitPython
  ## Returns true if the repository had something todo.
  repo = Repo(path)
  result = False
  if repo.is_dirty():
    print("─────────────────────────────────────────────────┐")
    print("「",path,"」")
    print("     └─── has pending changes:")
    time.sleep(0.5)
    os.chdir(path)
    subprocess.run(["git", "status"])
    print("─────────────────────────────────────────────────┘")
    print("")
    result = True
    os.chdir("../")
  return result
#___________________
# n*dk management
def GitNdk():
  gitPending = False
  for filename in os.listdir ("."): # loop through all the files and folders
    if os.path.isdir(os.path.join(os.path.abspath("."), filename)): # check whether the current object is a folder or not
      if filename in ignores: continue
      hasTodo = GitReport( filename )
      if not gitPending and hasTodo: gitPending = True
  if not gitPending: subprocess.run(["/home/gto/.local/bin/glow", "./doc/todo.md"])
