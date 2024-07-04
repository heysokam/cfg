$xtrBins = [  # Extra binary folders
  f'{$HOME}/.cargo/bin',
  f'{$HOME}/.pyenv/bin',
  f'{$HOME}/.nimble/bin',
  f'{$HOME}/.local/bin',
  f'{$HOME}/.minc/bin',
  f'{$HOME}/.cnim/bin',
  f'{$HOME}/.bun/bin',
  '/usr/local/osx-ndk-x86/bin/'
]
from os.path import isdir, exists
for dir in $xtrBins:
  if isdir(dir) and exists(dir):
    $PATH.add(dir, front=True, replace=True)

##...............................................
# Command history
##...............................................
# SQLite history, to save commands immediately. Unlike default (json), that saves at the end of the session.
# $XONSH_HISTORY_BACKEND = 'sqlite'
# What commands are saved to the history list. By default all commands are saved.
# * The option ‘ignoredups’ will not save the command if it matches the previous command.
# * The option `erasedups` will remove all previous commands that matches and updates the command frequency.
#   The minus of `erasedups` is that the history of every session becomes unrepeatable
#   because it will have a lack of the command you repeat in another session.
# Docs: https://xonsh.github.io/envvars.html#histcontrol
# $HISTCONTROL='ignoredups'
##...............................................


##...............................................
# Extensions
##...............................................
## Powerline   : xpip install xontrib-powerline3
xontrib load powerline3
### Colors
$PROMPT_FIELDS["cwd__pl_colors"] = ("#111111", "#444444")  # Format: `<prompt-field-name>__pl_colors`. Can be a function returning `tuple[str, str]`, or set tuples directly.
### Choose the powerline glyph used
$POWERLINE_MODE = "powerline" # available modes: round/down/up/flame/squares/ruiny/lego  : If not set: will choose random
### Define the prompts using the format style and you are good to go
from os import linesep
$PROMPT = "".join([
  "{vte_new_tab_cwd}",
  "{cwd:{}}",
  "{gitstatus:{}}",
  "{ret_code}",
  "{background_jobs}",
  linesep,
  "{full_env_name: {}}",
  "❖  ",
  ])
#$RIGHT_PROMPT = "".join((
#  # "{long_cmd_duration: ⌛{}}",
#  "{user: {}}",
#  "{hostname: {}}",
#  #"{localtime: {}}",
#  ))
### Fix right prompt at the bottom
###   sudo lvim /usr/lib/python3.10/site-packages/prompt_toolkit/shortcuts/prompt.py
###   Search for `bottom=0`  :   Change to `top=0`
##...............................................


##...............................................
# Keybinds
#   Binding the keys  : https://xon.sh/tutorial_ptk.html
#   List of keys      : https://github.com/prompt-toolkit/python-prompt-toolkit/blob/master/src/prompt_toolkit/keys.py
##...............................................
from prompt_toolkit.keys import Keys
##............................
@events.on_ptk_create
def custom_keybindings(bindings, **kw):
  ##............................
  # F1 : list of files
  @bindings.add(Keys.F1)
  def run_ls(event):
    ls -l
    event.cli.renderer.erase()
  ##............................
  # F3 : insert grep command
  @bindings.add(Keys.F3)
  def say_hi(event):
    event.current_buffer.insert_text(' | grep -i ')
##...............................................


##...............................................
# Show the Logo+Stats
#fastfetch  # --logo /hdd/img/jera.txt
